bag = data_bag_item("sgtdeploy", "files")
orig = "c:\\Temp\\" + bag["VERSION"] + "\\APP"
dest = node["SGT"]["APP"]


Dir[ "#{orig}\\atualizaBanco\\scripts\\**\\*" ].each do |curr_path|
  directory "#{dest}\\AtualizaBanco\\Scripts\\#{File.dirname(curr_path)}" do
    path curr_path
    action :create
  end if File.directory?(curr_path)
end 
