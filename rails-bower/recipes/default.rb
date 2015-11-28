#
# Cookbook Name:: rails-bower
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nodejs" do
  action :install
end

package "npm" do
  action :install
end

execute "install bower" do
  command "sudo npm install bower -g"
  action :run
end
