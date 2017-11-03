#
# Cookbook:: nginx-config
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nginx'

service 'nginx' do
	action :start
end

directory '/etc/ssl/nginx' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

file '/etc/ssl/nginx/nginx-repo.key' do
	owner 'root'                         
        group 'root'             
        mode '0644'            
end 

file '/etc/ssl/nginx/nginx-repo.crt' do   
	owner 'root'
	group 'root'
	mode '0644'	
end
  
