    node['SGT']['CONGLOMERADOS'].each do |lyr|
	template "C:\\Aplicativos_Navita\\#{lyr[1]}\\Web.config" do
	  source "Web.config.erb"
	  variables({
		:conglomerado => "#{lyr[0]}",
		:ip_app => node['SGT']['IP_APP'],
		:url => "#{lyr[1]}"
	  })
	end
    end
