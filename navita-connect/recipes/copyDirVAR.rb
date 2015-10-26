directory '/var/data/' do
  action :create
  recursive true
end

execute 'Copy VAR Tar' do
  command "mv /home/ubuntu/temp/data.tar.gz /var/data/"
  returns [0, 1]
end

execute 'Untar file' do
  command "tar -xvzf /var/data/data.tar.gz"
  returns [0,1]
end