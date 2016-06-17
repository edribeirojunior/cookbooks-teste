
# add a virtual directory to default application

node['MICRODATA']['PRODRep'].each do |lyrrep|

  inetpub = "#{node['MICRODATA']['IISPATH']}Microdata\\"

  physical_path = "#{lyrrep['name']}"

  iis_vdir "#{lyrrep['name']}" do
    action :add
    path "#{lyrrep['name']}"
    physical_path "#{inetpub}#{physical_path}"
  end

end