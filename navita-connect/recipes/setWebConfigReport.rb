RDS=node['CONNECT']['DB']['RDS']
USER_DATABASE=node['CONNECT']['DB']['USER_DATABASE']
PASSWD_DATABASE=node['CONNECT']['DB']['PASSWD_DATABASE']
template "/opt/report/report-start.sh" do
  source "report-start.sh.erb"
  variables({
                :rds => RDS
                :user_database => USER_DATABASE
                :passwd_database => PASSWD_DATABASE
            })
end