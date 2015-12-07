LINK_CONNECT= node['CONNECT']['LINK_CONNECT']
  template "/opt/portal/portal-start.sh" do
    source "portal-start.sh.erb"
    variables = {
                  :link_connect => LINK_CONNECT
              }
  end
