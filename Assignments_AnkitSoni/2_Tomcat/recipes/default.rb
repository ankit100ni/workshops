#
# Cookbook Name:: 2_Tomcat
# Recipe:: default
#
# Copyright (c) 2022 The Authors, All Rights Reserved.


include_recipe '2_Tomcat::user_and_group_config.rb'
include_recipe '2_Tomcat::tomcat_config.rb'
include_recipe '2_Tomcat::service_config'


# package 'java-1.7.0-openjdk-devel'
# package 'wget'

# group 'tomcat' do
#     action :create
# end

# user 'tomcat' do
#     shell '/bin/nologin'
#     gid 'tomcat'
#     manage_home false
#     home '/opt/tomcat'
# end

# execute 'tomcat_binary' do
#     command 'wget http://apache.cs.utah.edu/tomcat/tomcat-8/v8.5.77/bin/apache-tomcat-8.5.77.tar.gz'
#     cwd '/tmp'
# end

# directory '/opt/tomcat'

# execute 'extract_tomcat_binary' do
#     command 'sudo tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1'
#     cwd '/tmp'
# end


# execute 'update_permissions' do
#     command 'cd /opt/tomcat;sudo chgrp -R tomcat /opt/tomcat;sudo chmod -R g+r conf;sudo chmod g+x conf;sudo chown -R tomcat webapps/ work/ temp/ logs/'
# end

# template '/etc/systemd/system/tomcat.service' do
#     source 'tomcat_service.txt'
#     owner 'root'
#     mode 0644
# end

# execute 'reload_daemon' do
#     command 'sudo systemctl daemon-reload'
# end

# service 'tomcat' do
#     action [:enable, :start]
# end