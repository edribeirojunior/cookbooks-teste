node['MICRODATA']['PROD'].each do |lyr|
  iis_pool "#{lyr['name']}" do
    action [:stop, :delete]
  end
end
