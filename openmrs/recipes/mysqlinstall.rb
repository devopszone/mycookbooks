#
# Cookbook:: .
# Recipe:: mysqlinstall
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install mysql client
mysql_client 'default' do
  action :create
end


#install mysql server
mysql_service 'default' do
  version '5.5'
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'root'
  action [:create, :start]
end