bag = data_bag_item("connect", "connect")
target = "/home/ubuntu/temp/" + bag["OPTFILE"]

directory '/home/ubuntu/temp/' do
  action :create
  recursive true
end

remote_file "#{target}" do
  source bag["FTP_PATH"] + bag["OPTFILE"]
  action :create
end

