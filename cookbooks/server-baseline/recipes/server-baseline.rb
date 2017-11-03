#
# Cookbook:: server-baseline
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute 'apt-get-update-periodic' do
	command 'apt-get update'
	ignore_failure true
	action :nothing
end


package 'git'


package 'geany'

