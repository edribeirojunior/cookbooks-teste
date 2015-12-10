  template "/opt/portal/portal-start.sh" do
    source "portal-start.sh.erb"
    variables = {
                  :link_connect => LINK_CONNECT ,
                  :rds => RDS ,
                  :user_database => USER_DATABASE ,
                  :passwd_database => PASSWD_DATABASE ,
              }
  end
