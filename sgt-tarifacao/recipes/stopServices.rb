service "GTC-Monitor" do
  action :stop
end

service "W3SVC" do
  action :stop
end

powershell_script 'stopServices.ps' do
  code <<-EOH
  Get-Service | Where-Object {$_.status -eq "running"} | Where-Object {$_.DisplayName -like "*GTC*"} | ForEach{
  stop-service $_.Name
  }

  Get-Service | Where-Object {$_.status -eq "running"} | Where-Object {$_.DisplayName -like "*SGT*"} | ForEach{
  stop-service $_.Name
  }
 
  Get-Service | Where-Object {$_.status -eq "running"} | Where-Object {$_.DisplayName -like "*navita*"} | ForEach{
  stop-service $_.Name
  }
  EOH
  flags '-ExecutionPolicy RemoteSigned'
  guard_interpreter :powershell_script
end 

