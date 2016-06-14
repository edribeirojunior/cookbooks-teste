
execute 'Copy iDCE files' do
  command "robocopy #{node['MICRODATA']['TEMPATH']}iDCE\\IDCE_mCockpit #{node['MICRODATA']['IISPATH']}\\Microdata\\iDCE /s /COPY:DT"
  returns [0, 1]
end

execute 'Copy iDCE servico files' do
  command "robocopy #{node['MICRODATA']['TEMPATH']}iDCE\\idce_servico_mcockpit #{node['MICRODATA']['IISPATH']}\\Microdata\\iDCE.Servico /s /COPY:DT"
  returns [0, 1]
end

execute 'Copy mPacs files' do
  command "robocopy #{node['MICRODATA']['TEMPATH']}mPacs\\mPacs2.0 #{node['MICRODATA']['IISPATH']}\\Microdata\\mPacs /s /COPY:DT"
  returns [0, 1]
end

execute 'Copy PortalExames Client files' do
  command "robocopy #{node['MICRODATA']['TEMPATH']}mPortalExames\\Client #{node['MICRODATA']['IISPATH']}\\Microdata\\PortalExames\\Client /s /COPY:DT"
  returns [0, 1]
end

execute 'Copy PortalExames WS files' do
  command "robocopy #{node['MICRODATA']['TEMPATH']}mPortalExames\\WS #{node['MICRODATA']['IISPATH']}\\Microdata\\PortalExames\\WS /s /COPY:DT"
  returns [0, 1]
end
