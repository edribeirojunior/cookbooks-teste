  bag = data_bag_item("sgttarifacao", "files")
  target = "c:/Temp/" + bag["FILE"]

  remote_file "#{target}" do
    source bag["FTP_PATH"] + bag["FILE"]
    action :create
  end

 
