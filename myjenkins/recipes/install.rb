#
# Cookbook:: .
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['myjenkins']['install']['packagename']
apt_update 'update' do
    action :update
    end
package package_name do
  action :install
end
service package_name do
  action [:enable, :start]
end
#configure users.xml
#template node['myjenkins']['usersfile'] do
  #source 'tomcat-users.erb'
  #owner 'root'
  #group '3'
  #mode '0755'
  #action :create
#end
#install additional packages

 package node['install']['aditionalpackages'] do
   action :install
   notifies :restart, "service[#{package_name}]"
 end
 
