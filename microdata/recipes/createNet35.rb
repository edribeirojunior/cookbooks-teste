#Install .NetFramework 3.5

windows_feature 'IIS-ASPNET45' do
  action :install
  all true
end

windows_feature 'AS-NET-Framework' do
  action :install
end

windows_feature 'IIS-NetFxExtensibility45' do
  action :install
end

#windows_feature 'NetFx3ServerFeatures' do
#  action :install
#  all true
#end

#windows_feature 'WCF-HTTP-Activation' do
#  action :install
#end

#windows_feature 'WCF-NonHTTP-Activation' do
#  action :install
#end

#windows_feature 'MicrosoftWindowsPowerShellISE' do
#  action :install
#end

#windows_feature 'WAS-WindowsActivationService' do
#  action :install
#  all true
#end
