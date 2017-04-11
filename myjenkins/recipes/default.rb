#
# Cookbook:: myjenkins
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'java'
include_recipe 'myjenkins::install'
include_recipe 'myjenkins::deploy'