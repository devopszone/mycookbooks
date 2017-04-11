#
# Cookbook:: orange_hrm
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


include_recipe 'orange_hrm::apache_install'
include_recipe 'orange_hrm::php_install'
include_recipe 'orange_hrm::mysql_install'
include_recipe 'orange_hrm::deploy_app'
