#
# Cookbook:: .
# Recipe:: deploy
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#tune tomcat
package_name = node['myjenkins']['install']['packagename']
if node['myjenkins']['SET_JAVA_OPTS_FILE'] == true
  template node['myjenkins']['JAVA_OPTS_FILE'] do
    source node['myjenkins']['JAVA_OPTS_FILE_TEMPLATE']
    owner 'root'
    mode '0755'
    action :create
    notifies :restart, "service[#{package_name}]"
  end

  log "created template @ #{node['myjenkins']['JAVA_OPTS_FILE']}"
end



#deploy_application
#cookbook_file node['applicationserver']['warlocation'] do
#  source 'openmrs.war'
#  owner 'root'
#  group 'root'
#  mode '0755'
#  action :create
#  notifies :restart, "service[#{tomcat_packageName}]"
#end

remote_file node['myjenkins']['warlocation'] do
  source node['myjenkins']['war_url']
  mode '0777'
  action :create_if_missing
  notifies :restart, "service[#{package_name}]"
end


log 'copied war file and restarted tomcat'