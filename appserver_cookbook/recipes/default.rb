#
# Cookbook:: appserver_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'java'

include_recipe 'appserver_cookbook::installation'
include_recipe 'appserver_cookbook::deploy_app'