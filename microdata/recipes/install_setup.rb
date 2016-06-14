node['Install']['PROD'].each do |lyr|

  windows_package 'Microdata EXE' do
    source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupexe']}"
    options '-q' 
    action :install
  end

  #windows_package 'Setup mCockpit 2016.5.1.6' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupexe']}"
  #  action :install
  #end

  #windows_package 'mUpdater Setup' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupexe']}"
  #  options '-q'
  #  action :install
  #end

##Instalação MSI

  windows_package 'Microdata MSI' do
    source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupmsi']}"
    installer_type :msi
    action :install
  end


    #windows_package 'mUpdater Setup' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}/#{lyr['setupexe']}"
  #  options '-q'
  #  action :install
  #end


#node['Service']['PROD'].each do |service|

  #windows_package 'setup' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{service['path']}/setup.exe"
  #  options '-q'
  #  action :install
  #end

  #windows_package 'mPacs' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{service['path']}/mPacs.msi"
  #  installer_type :msi
  #  options '/i'
  #  action :install
  #end

end
