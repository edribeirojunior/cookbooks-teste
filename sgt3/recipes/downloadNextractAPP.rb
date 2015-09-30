  bag = data_bag_item("sgt3", "files")
  target = "c:/Temp/" + bag["APPFILE"]

 directory 'C:\\Temp' do
    action :create
    recursive true
 end

  remote_file "#{target}" do
    source bag["FTP_PATH"] + bag["APPFILE"]
    action :create
  end

  windows_zipfile "c:/Temp/sgt3-APP/" do
    source "#{target}"
    action :unzip
    overwrite true
  end
 
