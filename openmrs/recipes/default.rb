#
# Cookbook:: openmrs
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'java'
include_recipe 'openmrs::app_server'
include_recipe 'openmrs::deploy_app'