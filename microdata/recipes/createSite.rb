node['MICRODATA']['PROD'].each do |lyr|

# Define a variavel inetpub

  inetpub = "#{node['MICRODATA']['IISPATH']}\\Microdata\\"

# Cria o site Microdata

  iis_site 'Microdata' do
    application_pool 'DefaultAppPool'
    protocol :http
    port node['config_variables']['port']
    host_header node['MICRODATA']['SITE']
    path "#{inetpub}"
    action [:add,:start]
  end

# Cria os produtos Microdata no site Microdata, identificados pelos produtos cadastrados

  physical_path = "#{lyr['name']}"


  iis_app "#{lyr['name']}" do
    site_name "Microdata"
    path "/#{lyr['name']}"
    application_pool "#{lyr['name']}"
    physical_path "#{inetpub}#{physical_path}"
    enabled_protocols "http"
    action :add
  end
end
