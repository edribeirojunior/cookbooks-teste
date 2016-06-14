node['MICRODATA']['PROD'].each do |lyr|
	directory 'C:\\inetpub\\wwwroot\\Microdata\\'"#{lyr['name']}" do
		action :delete
		recursive true
  end

  directory "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}" do
    action :delete
    recursive true
  end
end

node['Service']['PROD'].each do |service|
   directory "#{node['MICRODATA']['TEMPATH']}#{service['path']}" do
    action :delete
    recursive true
  end

end
