directory '/opt/' do
  action :create
  recursive true
end

execute 'Copy OPT Tar' do
  command "mv /home/ubuntu/temp/connect_opt.tar.gz /opt/"
  returns [0,1]
end

execute 'Untar file' do
  command "tar -xvzf /opt/connect_opt.tar.gz"
  returns [0,1]
end
