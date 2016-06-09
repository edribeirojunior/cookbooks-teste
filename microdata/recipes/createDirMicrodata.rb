directory 'C:\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone","IIS_IUSRS", :applies_to_children => true
end

directory 'C:\\inetpub\\wwwroot\\Microdata' do
  action :create
  recursive true
  rights :full_control, "Everyone","IIS_IUSRS", :applies_to_children => true
end