node['MICRODATA']['PROD'].each do |lyr|
	directory 'C:\\inetpub\\wwwroot\\Microdata\\'"#{lyr[1]}" do
		action :delete
		recursive true
	end
end
