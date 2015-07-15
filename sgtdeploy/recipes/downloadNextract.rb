  bag = data_bag_item("sgtdeploy", "files")
  target = "c:/Temp/" + bag["FILE"]

  remote_file "#{target}" do
    source bag["FTP_PATH"] + bag["FILE"]
    action :create
  end

  windows_zipfile "c:/Temp" do
    source "#{target}"
    action :unzip
    overwrite true
  end
 
