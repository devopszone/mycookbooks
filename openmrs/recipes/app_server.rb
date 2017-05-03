#
# Cookbook:: .
# Recipe:: app_server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['openmrs']['app_server']['packageName']
users_file = node['openmrs']['usersfile']
additional_pkg = node['openmrs']['app_server']['additionalpackages']
apt_update 'update' do
  action :update
end

package package_name do
  action :install
end
package additional_pkg do
  action :install
end

service package_name do
  action [:enable, :start]
end
#configure tomcat users
template users_file do
  source 'tomcat-user.erb'
  owner 'root'
  mode '0755'
  action :create
end








