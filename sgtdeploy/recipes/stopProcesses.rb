powershell_script 'stopProcesses.ps' do
  code <<-EOH
  Stop-Process -processname "*Alarmes*" -Force
  Stop-Process -processname "*ColFile*" -Force
  Stop-Process -processname "*ColetorIP*" -Force
  Stop-Process -processname "*MonitorWebConfig*" -Force
  EOH
  flags '-ExecutionPolicy RemoteSigned'
  guard_interpreter :powershell_script
end 

