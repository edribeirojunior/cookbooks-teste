RDS=node['CONNECT']['DB']['RDS']
USER_DATABASE=node['CONNECT']['DB']['USER_DATABASE']
PASSWD_DATABASE=node['CONNECT']['DB']['PASSWD_DATABASE']
template "/opt/cas/webapps/cas/WEB-INF/cas.properties" do
  source "cas.properties.erb"
  variables = {
                :rds => RDS ,
                :user_database => USER_DATABASE ,
                :passwd_database => PASSWD_DATABASE ,
  }
end