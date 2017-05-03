
default['openmrs']['app_server']['packageName']= 'tomcat7'
default['openmrs']['app_server']['additionalpackages'] = ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']
#default['openmrs']['JAVA_OPTS_FILE'] = '/etc/default/tomcat7'
#default['openmrs']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat7.erb'
default['openmrs']['usersfile'] = '/etc/tomcat7/tomcat-users.xml'
default['openmrs']['warlocation'] = '/var/lib/tomcat7/webapps/openmrs.war'

default['openmrs']['SET_JAVA_OPTS_FILE'] = false
default['openmrs']['username'] = 'admin'
default['openmrs']['password'] = 'password'
default['openmrs']['roles'] = 'manager-gui,admin-gui'

default['openmrs']['war_url'] = 'https://github.com/devopszone/war-files/blob/master/openmrs.war'


#java attributes

default['java']['install_flavor']= 'oracle'
default['java']['jdk_version'] = '7'
default['java']['set_etc_environment'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true

