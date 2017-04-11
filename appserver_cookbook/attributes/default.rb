

case node['platform']
when 'ubuntu', 'debian'
  default['installation']['applicationserver'] = 'tomcat7'
  default['installation']['additionalpackages'] = ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']
  default['applicationserver']['JAVA_OPTS_FILE'] = '/etc/default/tomcat7'
  default['applicationserver']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat7.erb'
  default['applicationserver']['usersfile'] = '/etc/tomcat7/tomcat-users.xml'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat7/webapps/petclinic.war'

default['applicationserver']['SET_JAVA_OPTS_FILE'] = false
default['applicationserver']['username'] = 'admin'
default['applicationserver']['password'] = 'password'
default['applicationserver']['roles'] = 'manager-gui,admin-gui'

default['applicationserver']['war_url'] = 'https://github.com/devopszone/war-files/blob/master/petclinic.war'

end

#java attributes

default['java']['install_flavor']= 'oracle'
default['java']['jdk_version'] = '7'
default['java']['set_etc_environment'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true
