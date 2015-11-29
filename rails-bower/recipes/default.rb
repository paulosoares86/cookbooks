#
# Cookbook Name:: rails-bower
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "add nodejs ppa"
  command "curl -sL https://deb.nodesource.com/setup | sudo bash -"
  action :run
end

package "nodejs" do
  action :install
end

package "build-essential" do
  action :install
end

package "npm" do
  action :install
end

execute "update gem" do
  command "sudo gem update"
  action :run
end

execute "install bower" do
  command "sudo npm install bower -g"
  action :run
end
