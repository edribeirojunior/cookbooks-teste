LINK_CONNECT = node[:normal][:CONNECT][:LINK_CONNECT]
RDS = node[:CONNECT][:DB][:RDS]
USER_DATABASE = node[:CONNECT][:DB][:USER_DATABASE]
PASSWD_DATABASE = node[:CONNECT][:DB][:PASSWD_DATABASE]
  template "/opt/portal/portal-start.sh" do
    source "portal-start.sh.erb"
    variables = {
                  :link_connect => LINK_CONNECT ,
                  :rds => RDS ,
                  :user_database => USER_DATABASE ,
                  :passwd_database => PASSWD_DATABASE ,
              }
  end
