execute 'create Service' do
  command 'sc create "Navita Hosting - SGT3" binpath= "C:\Aplicativos_Navita\Navita.NGN.APP\Navita.NGN.WCF.exe" start= auto'
end

service "Navita Hosting - SGT3" do
  action :start
end
