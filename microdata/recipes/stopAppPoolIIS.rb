node['SGT']['CONGLOMERADOS'].each do |lyr|
  iis_pool "#{lyr[1]}" do
    action :stop
  end
end
