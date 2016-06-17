node['MICRODATA']['PROD'].each do |lyr|
  iis_pool "#{lyr['name']}" do
    action :start
  end
end

node['MICRODATA']['PROD32'].each do |lyr32|
  iis_pool "#{lyr32['name']}" do
    action :start
  end
end

node['MICRODATA']['PRODRep'].each do |lyrrep|
  iis_pool "#{lyrrep['name']}" do
    action :start
  end
end

node['MICRODATA']['PRODPE'].each do |lyrpe|
  iis_pool "#{lyrpe['name']}" do
    action :start
  end
end