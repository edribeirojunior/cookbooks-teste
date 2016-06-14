# stop and delete the default site
iis_site "#{node['MICRODATA']['SITE']}" do
  action [:stop, :delete]
end
