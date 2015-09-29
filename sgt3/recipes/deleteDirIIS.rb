node['SGT']['CONGLOMERADOS'].each do |lyr|
	directory 'C:\\Aplicativos_Navita\\#{lyr[1]}' do
		action :delete
		recursive true
	end
end
