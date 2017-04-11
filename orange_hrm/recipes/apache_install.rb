#
# Cookbook:: .
# Recipe:: apache_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['orange_hrm']['apache_install']['packageName']
apt_update 'update' do
    action :update
end
package package_name do
  action :install
end
service package_name do
  action :start
end
