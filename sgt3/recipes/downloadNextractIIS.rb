  bag = data_bag_item("sgt3", "files")
  target = "c:/Temp/" + bag["IISFILE"]

  remote_file "#{target}" do
    source bag["FTP_PATH"] + bag["IISFILE"]
    action :create
  end

  windows_zipfile "c:/Temp/sgt3-IIS/" do
    source "#{target}"
    action :unzip
    overwrite true
  end
 
