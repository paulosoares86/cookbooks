#
# Cookbook Name:: ffmpeg
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'add ffmpeg repo key' do
  command 'rpm --import http://packages.atrpms.net/RPM-GPG-KEY.atrpms'
end

execute 'add ffmpeg repo' do
  command 'rpm -ivh http://dl.atrpms.net/el6-x86_64/atrpms/stable/atrpms-repo-6-7.el6.x86_64.rpm'
end

execute 'install ffmpeg' do
  command 'yum -y --enablerepo=atrpms install ffmpeg'
end
