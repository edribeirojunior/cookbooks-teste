##Instalação EXE

node['Install']['PROD'].each do |lyr|

  windows_package 'Microdata EXE' do
    source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupexe']}"
    options '-quiet'
    action :install
  end

##Instalação MSI

  windows_package 'Microdata MSI' do
    source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupmsi']}"
    installer_type :msi
    action :install
  end

end
