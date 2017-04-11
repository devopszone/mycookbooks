

case node['platform']
when 'ubuntu', 'debian'
  default['myjenkins']['install']['packagename'] = 'tomcat7'
  default['install']['additionalpackages'] = ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']
  default['myjenkins']['JAVA_OPTS_FILE'] = '/etc/default/tomcat7'
  default['myjenkins']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat7.erb'
  default['myjenkins']['usersfile'] = '/etc/tomcat7/tomcat-users.xml'
  default['myjenkins']['warlocation'] = '/var/lib/tomcat7/webapps/jenkins.war'

default['myjenkins']['SET_JAVA_OPTS_FILE'] = false
default['myjenkins']['username'] = 'admin'
default['myjenkins']['password'] = 'password'
default['myjenkins']['roles'] = 'manager-gui,admin-gui'

default['myjenkins']['war_url'] = 'https://github.com/devopszone/war-files/blob/master/jenkins.war'

end

#java attributes

default['java']['install_flavor']= 'oracle'
default['java']['jdk_version'] = '7'
default['java']['set_etc_environment'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true