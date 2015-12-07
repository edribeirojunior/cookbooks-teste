LINK_CONNECT= node['CONNECT']['LINK_CONNECT']
RDS=node['CONNECT']['DB']['RDS']
USER_DATABASE=node['CONNECT']['DB']['USER_DATABASE']
PASSWD_DATABASE=node['CONNECT']['DB']['PASSWD_DATABASE']
template "/opt/cas/webapps/cas/WEB-INF/cas.properties" do
  source "cas.properties.erb"
  variables = {
                :link_connect => LINK_CONNECT,
                :rds => RDS ,
                :user_database => USER_DATABASE ,
                :passwd_database => PASSWD_DATABASE ,
  }
end