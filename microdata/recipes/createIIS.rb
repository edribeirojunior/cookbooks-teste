##Install Windows Features
powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server -IncludeAllSubFeature'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end
