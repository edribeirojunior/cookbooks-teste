directory 'C:\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone", :applies_to_children => true
end

directory 'C:\\inetpub\\wwwroot\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone", :applies_to_children => true
end

inetpubmicrodata = 'C:\\inetpub\\wwwroot\\Microdata\\'

node['MICRODATA']['PROD'].each do |lyr|

  directory '#{inetpubmicrodata}#{lyr['name']}' do
    action :create
    recursive true
    rights :full_control, "Everyone", :applies_to_children => true
  end
end
