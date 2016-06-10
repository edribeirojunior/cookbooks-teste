node['MICRODATA']['PROD'].each do |lyr|

  windows_package 'Microdata' do
    source "#{node['MICRODATA']['TEMPATH']}#{lyr['name']}"
    options '-ms'
    installer_type :custom
    action :install
  end

end