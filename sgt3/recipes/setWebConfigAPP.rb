template "C:\\Aplicativos_Navita\\Navita.NGN.APP\\Navita.NGN.WCF.exe.config" do
  source "Navita.NGN.WCF.exe.config.erb"
  variables({
	:conn_string => node['SGT']['CONN_STRING'],
	:ip => node['ipaddress']
  })
end
