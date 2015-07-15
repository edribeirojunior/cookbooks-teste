bag = data_bag_item("sgtdeploy", "files")


file "c:/Temp/" + bag["FILE"] do
  action :delete
end

directory "c:/Temp/" + bag["VERSION"] do
  recursive true
  action :delete
end


