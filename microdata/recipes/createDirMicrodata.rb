directory 'C:\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone", "IIS_IUSRS", :applies_to_children => true
end

directory 'C:\\inetpub\\wwwroot\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone", "IIS_IUSRS", :applies_to_children => true
end

##Definição variavel

inetpubmicrodata = 'C:\\inetpub\\wwwroot\\Microdata\\'

## Criação das pastas de produtos

node['MICRODATA']['PROD'].each do |lyr|

  directory "#{inetpubmicrodata}#{lyr['name']}" do
    action :create
    recursive true
    rights :full_control, "Everyone", :applies_to_children => true
  end
end

node['MICRODATA']['PROD32'].each do |lyr32|

  directory "#{inetpubmicrodata}#{lyr32['name']}" do
    action :create
    recursive true
    rights :full_control, "Everyone", :applies_to_children => true
  end
end

node['MICRODATA']['PRODRep'].each do |lyrrep|

  directory "#{inetpubmicrodata}#{lyrrep['name']}" do
    action :create
    recursive true
    rights :full_control, "Everyone", :applies_to_children => true
  end
end

node['MICRODATA']['PRODPE'].each do |lyrpe|

  directory "#{inetpubmicrodata}#{lyrpe['name']}" do
    action :create
    recursive true
    rights :full_control, "Everyone", :applies_to_children => true
  end
end
