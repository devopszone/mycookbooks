#
# Cookbook:: .
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.
apt_update 'tomcat-update' do
    action :update
    end
    package 'tomcat7' do
      action :install
    end
    service 'tomcat7' do
      action :restart
    end
    