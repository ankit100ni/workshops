#
# Cookbook Name:: 1_MongoDB
# Recipe:: default
#
# Copyright (c) 2022 The Authors, All Rights Reserved.


template '/etc/yum.repos.d/mongodb-org-4.4.repo' do
    source 'mongoDBContent.txt'
    owner 'root'
    mode 0644
  end
  
  package 'mongodb-org'
  
  service 'mongod' do
    action [:enable, :start]
  end
  
  execute 'mongodb' do
    command 'sudo chkconfig mongod on'
  end
  
  