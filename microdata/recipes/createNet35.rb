#Install .NetFramework 3.5
powershell_script 'Install NET-Framework' do
  code 'Add-WindowsFeature NET-Framework -IncludeAllSubFeature'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name NET-Framework).Installed"
end
