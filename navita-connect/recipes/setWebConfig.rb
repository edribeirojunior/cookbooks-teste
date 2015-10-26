LINK_CONNECT= node['CONNECT']['LINK_CONNECT']
  template "/opt/httpd/conf/httpd.conf" do
    source "httpd.conf.erb"
    variables({
                  :link_connect => LINK_CONNECT
              })
  end
end