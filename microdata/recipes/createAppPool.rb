##Cria Estrutura IIS

#Define Prod como variaveis

node['MICRODATA']['PROD'].each do |lyr|

	# Cria pool de acrodo com prod
	iis_pool "#{lyr['name']}" do
	  runtime_version "4.0"
	  pipeline_mode :Integrated
	  action :add
	end
end
