#
# Cookbook:: ssh-config
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'open-ssh server'

service 'ssh'

ssh_config 'AllowGroups' do
	string "AllowGRoups #{node[ :ssh][ :allowed_groups].join('sshusers')}"
	only_if { node[ :ssh][ :allowd_groups].any? }
end

ssh_config 'DenyUsers' do
	string "DenyUsers #{node[ :ssh][ :denied_users].join('root')}"
	only_if {node[ :ssh][ :denied_users].any? }
end

ssh_banner_banner 'banner' do
	banner_file _banner_file
	sshd_config_file node['ssh_banner']['PROPERTY OF ACME CO.']
	paranoic_mode false
	action :create
	notifies :restart, "service[sshd]"
end
