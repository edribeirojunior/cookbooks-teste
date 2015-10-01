if node['SGT']['DB']['INSTANCE'] != ''
 HOST = node['SGT']['DB']['HOST'] + node['SGT']['DB']['INSTANCE']
else
 HOST = node['SGT']['DB']['HOST']
end
DATABASE = node['SGT']['DB']['DATABASE']
USER_DATABASE = node['SGT']['DB']['USER_DATABASE']
PASSWD_DATABASE = node['SGT']['DB']['PASSWD_DATABASE']
CONN_STRING = "Data Source=#{HOST};Initial Catalog=#{DATABASE};Persist Security Info=True;User ID=#{USER_DATABASE};Password=#{PASSWD_DATABASE};Connection Timeout=120"

template "C:\\Aplicativos_Navita\\Navita.NGN.APP\\Navita.NGN.WCF.exe.config" do
  source "Navita.NGN.WCF.exe.config.erb"
  variables({
	:conn_string => CONN_STRING ,
	:ip => node['ipaddress']
  })
end
