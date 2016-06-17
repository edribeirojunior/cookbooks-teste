## Configuracoes dos arquivos Portal Exames

if node['config_variables']['port'] != ''
 port = 81
else
  port = node['config_variables']['port']
end

if node['config_variables']['portidce'] != ''
  portidce = 1000
else
  portidce = node['config_variables']['portidce']
end

pe_wspath = "#{node['MICRODATA']['PRODPE']['name']}/WS"
url_pe_ws = "#{node['config_variables']['ipaddress']}:#{port}/#{pe_wspath}"
url_idce_service = "#{node['config_variables']['ipaddress']}:#{portidce}/Editor/Editor.svc"


node['MICRODATA']['PRODPE'].each do |lyrpe|

  inetpub = "#{node['MICRODATA']['IISPATH']}Microdata\\"

  template "#{inetpub}#{lyrpe['name']}\\Client\\Web.config" do
    source "WebPEClient.config.erb"
    variables({
      :url_pe_ws => url_pe_ws
    })
  end

  template "#{inetpub}#{lyrpe['name']}\\WS\\app\\service\\administracaoService.js" do
    source "administracaoPEWSService.js.erb"
    variables({
      :url_pe_ws => url_pe_ws
    })
  end

  template "#{inetpub}#{lyrpe['name']}\\WS\\app\\service\\exameService.js" do
    source "examePEWSService.js.erb"
    variables({
      :url_pe_ws => url_pe_ws
    })
  end

  template "#{inetpub}#{lyrpe['name']}\\WS\\Web.config" do
    source "WebPEWS.config.erb"
    variables({
      :url_idce_service => url_idce_service
    })
  end

end

############################################################################################






