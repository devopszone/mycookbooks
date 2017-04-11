#
# Cookbook:: .
# Recipe:: mysql_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#use mysql 
apt_update 'update' do
    action :update
end
#mysql client install
mysql_client 'default' do
  action :create
end
# mysql service configuration
mysql_service 'default' do
  version '5.5'
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'root'
  action [:create, :start]
end
