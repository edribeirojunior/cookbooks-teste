##Cria Estrutura IIS

#Define Prod como variaveis

node['MICRODATA']['PROD'].each do |lyr|

	# Cria pool de acrodo com prod
	iis_pool "#{lyr['name']}" do
	  runtime_version "4.0"
		thirty_two_bit true
		pool_identity :LocalSystem
		idle_timeout '00:00:00'
		pipeline_mode :Integrated
		disallow_rotation_on_config_change true
		disallow_overlapping_rotation true
	  action :add
	end
end
