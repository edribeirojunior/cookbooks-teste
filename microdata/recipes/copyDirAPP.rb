directory 'C:\\Aplicativos_Navita' do
  action :create
  recursive true
end

execute 'Copy APP files' do
  command "robocopy C:\\Temp\\sgt3-APP\\Navita.NGN.APP C:\\Aplicativos_Navita\\Navita.NGN.APP /s /COPY:DT"
  returns [0, 1]
end

