  template "/opt/portal/portal-start.sh" do
    source "portal-start.sh.erb"
    variables = {
                  :link_connect => $link_connect ,
                  :rds => $rds ,
                  :user_database => $user_database ,
                  :passwd_database => $passwd_database ,
              }
  end
