node['MICRODATA']['PROD'].each do |lyr|

# Define a variavel inetpub

  inetpub = "#{node['MICRODATA']['IISPATH']}Microdata\\"

# Cria o site Microdata

  iis_site 'Microdata' do
    application_pool 'DefaultAppPool'
    protocol :http
    port node['config_variables']['port']
    host_header node['MICRODATA']['SITE']
    path "#{inetpub}"
    action [:add,:start]
  end

  #iis_site 'iDCE.Service' do

  #end

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

node['MICRODATA']['PROD32'].each do |lyr32|

  inetpub = "#{node['MICRODATA']['IISPATH']}Microdata"

  physical_path = "#{lyr32['path']}"

  iis_app "#{lyr32['name']}" do
    site_name "Microdata"
    path "/#{lyr32['name']}"
    application_pool "#{lyr32['name']}"
    physical_path "#{inetpub}#{physical_path}"
    enabled_protocols "http"
    action :add
  end
end

node['MICRODATA']['PRODPE'].each do |lyrpe|

  inetpub = "#{node['MICRODATA']['IISPATH']}Microdata\\"

  physical_path = "#{lyrpe['subfolder']}"

  iis_app "#{lyrpe['subfolder']}" do
    site_name "Microdata"
    path "/#{lyrpe['subfolder']}"
    application_pool "#{lyrpe['name']}"
    physical_path "#{inetpub}PortalExames\\#{physical_path}"
    enabled_protocols "http"
    action :add
  end
end
