node['SGT']['CONGLOMERADOS'].each do |lyr|
	#Create an app pool
	iis_pool "#{lyr[1]}" do
	  runtime_version "4.0"
	  pipeline_mode :Integrated
	  action :add
	end

	# create and start a new site that maps to
	# the physical location C:\inetpub\wwwroot\mysite
	# and uses the 'my_app_pool' application pool
	iis_site "#{lyr[1]}" do
	  application_pool "#{lyr[1]}"
	  protocol :http
	  port 80
	  host_header "#{lyr[1]}"
	  path "C:\\Aplicativos_Navita\\#{lyr[1]}"
	  action [:add,:start]
	end
end
