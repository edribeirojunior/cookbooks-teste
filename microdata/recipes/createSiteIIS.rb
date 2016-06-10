##Cria Estrutura IIS

#Define Prod como variaveis

node['MICRODATA']['PROD'].each do |lyr|

	# Cria pool de acrodo com prod
	iis_pool "#{lyr[1]}" do
	  runtime_version "4.0"
	  pipeline_mode :Integrated
	  action :add
	end

	# Define a variavel inetpub

  inetpub = "#{node['MICRODATA']['IISPATH']}"

  # Cria o site Microdata

	iis_site "Microdata" do
	  application_pool "DefaultAppPool"
	  protocol :http
	  port "#{node['config_variables']['port']}"
	  host_header "Microdata"
	  path "#{inetpub}"
	  action [:add,:start]
  end

  # Cria os produtos Microdata no site Microdata, identificados pelos produtos cadastrados

  iis_app "#{lyr[1]}" do
    site_name "Microdata"
    path node "/#{lyr[1]}"
    application_pool "#{lyr[1]}"
    physical_path "#{node['MICRODATA']['PROD']/}#{lyr['path']}}"
    enabled_protocols :http
    action :add
  end
end
