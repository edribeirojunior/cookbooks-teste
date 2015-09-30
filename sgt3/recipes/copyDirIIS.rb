directory 'C:\\Aplicativos_Navita' do
  action :create
  recursive true
end

node['SGT']['CONGLOMERADOS'].each do |lyr|
	execute 'Copy IIS files' do
	  command "robocopy C:\\Temp\\sgt3-IIS\\Navita.NGN.WEB C:\\Aplicativos_Navita\\#{lyr[1]} /s"
	  returns [0, 1]
	end
end
