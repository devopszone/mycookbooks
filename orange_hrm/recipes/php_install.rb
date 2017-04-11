#
# Cookbook:: .
# Recipe:: php_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['orange_hrm']['php_install']['packageName']

package package_name do
  action :install
end

cookbook_file '/var/www/html/info.php' do
  source 'info.php'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


