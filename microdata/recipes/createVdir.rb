
# add a virtual directory to default application
iis_vdir 'mReportBuilder/' do
  action :add
  path 'mReportBuilder'
  physical_path 'C:\wwwroot\shared\test'
end