##Create Site IIS

node['MICRODATA']['PROD'].each do |lyr|
	#Create an app pool
	iis_pool "#{lyr[1]}" do
	  runtime_version "4.0"
	  pipeline_mode :Integrated
	  action :add
	end

	# create and start a new site that maps to
	# the physical location C:\inetpub\wwwroot\mysite
	# and uses the 'my_app_pool' application pool
	iis_site "Microdata" do
	  application_pool "DefaultAppPool"
	  protocol :http
	  port "#{node['MICRODATA']['CONFIG']['PORT']}"
	  host_header "Microdata"
	  path "C:\\inetpub\\wwwroot"
	  action [:add,:start]
  end

  # Creates a new app

  iis_app "#{lyr[1]}" do
    site_name "Microdata"
    path node "/#{lyr[1]}"
    application_pool "#{lyr[1]}"
    physical_path "#{node['MICRODATA']['PROD']"#{lyr[1]}"['PATH']}"
    enabled_protocols :http
    action :add
  end
end
