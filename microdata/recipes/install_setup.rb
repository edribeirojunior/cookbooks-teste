  windows_package 'Setup Módulo de Entrega 2016.5.1.6' do
    source "#{node['MICRODATA']['TEMPATH']}mEntrega/Setup Módulo de Entrega 2016.5.1.6.exe"
    action :install
  end

#//  windows_package 'Setup mCockpit 2016.5.1.6' do
#    source "#{node['MICRODATA']['TEMPATH']}mCockpit/Setup mCockpit 2016.5.1.6.exe"
#    action :install
 # end

  #windows_package 'mUpdater' do
  #  source "#{node['MICRODATA']['TEMPATH']}mUpdater/mUpdater.Servico.Install.msi"
  #  installer_type :msi
  #  action :install
  #end

  windows_package 'mUpdater Setup' do
    source "#{node['MICRODATA']['TEMPATH']}mUpdater/setup.exe"
    options '-q'
    action :install
  end


node['Service']['PROD'].each do |service|

  windows_package 'setup' do
    source "#{node['MICRODATA']['TEMPATH']}#{service['path']}/setup.exe"
    options '-q'
    action :install
  end

  #windows_package 'mPacs' do
  #  source "#{node['MICRODATA']['TEMPATH']}#{service['path']}/mPacs.msi"
  #  installer_type :msi
  #  options '/i'
  #  action :install
  #end

end