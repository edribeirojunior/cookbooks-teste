##Cria Estrutura IIS

#Define Prod como variaveis

node['MICRODATA']['PROD'].each do |lyr|

	# Cria pool de acrodo com prod
	iis_pool "#{lyr['name']}" do
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
	  port node['config_variables']['port']
	  host_header "Microdata"
	  path "#{inetpub}"
	  action [:add,:start]
  end

  # Cria os produtos Microdata no site Microdata, identificados pelos produtos cadastrados

  physical_path = "#{lyr['path']}"


  iis_app {lyr['name']} do
    site_name "Microdata"
    path node "/#{lyr['name']}"
    application_pool "#{lyr['name']}"
    physical_path "#{node['MICRODATA']['PROD']}#{physical_path}"
    enabled_protocols :http
    action :add
  end
end
