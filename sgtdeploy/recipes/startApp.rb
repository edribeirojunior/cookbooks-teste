dest = node["SGT"]["APP"]

execute 'App Alarmes' do
  command "C:\Windows\System32\runas.exe /profile /user:temsgt #{dest}\\Alarmes\\Alarmes.exe"
  returns [0,1,3]
end

execute 'App ColFile' do
  command "C:\Windows\System32\runas.exe /profile /user:temsgt #{dest}\\Mediador\\ColFile.exe"
  returns [0,1,3]
end

