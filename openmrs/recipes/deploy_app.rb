#
# Cookbook:: .
# Recipe:: deploy_app
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package_name = node['openmrs']['app_server']['packageName']

#if node['openmrs']['SET_JAVA_OPTS_FILE'] == true
 # template node['openmrs']['JAVA_OPTS_FILE'] do
  #  source node['openmrs']['JAVA_OPTS_FILE_TEMPLATE']
   # owner 'root'
    #mode '0755'
    #action :create
    #notifies :restart, "service[#{package_name}]"
  #end
#end  

remote_file node['openmrs']['warlocation'] do
  source node['openmrs']['war_url']
  mode '0777'
  action :create_if_missing
  notifies :restart, "service[#{package_name}]"
end