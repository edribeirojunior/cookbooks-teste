##Install Windows Features

windows_feature 'IIS-WebServerRole' do
  action :install
end

windows_feature 'IIS-WebServer' do
  action :install
end

windows_feature 'IIS-CommonHttpFeatures' do
  action :install
  feature_name 'IIS-StaticContent','IIS-DefaultDocument','IIS-DirectoryBrowsing','IIS-HttpErrors'
end

windows_feature 'IIS-ApplicationDevelopment' do
  action :install
  all true
end

windows_feature 'IIS-HealthAndDiagnostics' do
  action :install
  feature_name 'IIS-HttpLogging','IIS-RequestMonitor'
end

windows_feature 'IIS-Security' do
  action :install
  windows_feature 'IIS-RequestFiltering'
end

windows_feature 'IIS-Performance' do
  action :install
  all true
end

windows_feature 'IIS-WebServerManagementTools' do
  action :install
  all true
end

