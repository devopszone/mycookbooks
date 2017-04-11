#
# Cookbook:: appserver_cookbook
# Recipe:: installation.rb
#
# Copyright:: 2017, The Authors, All Rights Reserved.
apt_update 'update_daily' do
    action [:periodic, :update]
    frequency 3600
  end
  log 'update frequency set to 1 hour'

tomcat_packageName = node['installation']['applicationserver']
log "identified package is #{tomcat_packageName}"

# installation of tomcat
package tomcat_packageName do
  action :install
end

log 'installed tomcat'

# starting tomcat service
service tomcat_packageName do
  action [:enable, :start]
end

log 'enabled and started tomcat'

# configure users.xml

template node['applicationserver']['usersfile'] do
  source 'tomcat-users.erb'
  owner 'root'
  mode '0755'
  action :create
end

log "set tomcat-users data in #{node['applicationserver']['usersfile']}"


#install additional features
package node['installation']['additionalpackages'] do
  action :install
  notifies :restart, "service[#{tomcat_packageName}]"
end

log 'installed additionalpackages'