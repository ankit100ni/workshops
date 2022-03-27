#
# Cookbook:: 2_Tomcat
# Recipe:: service_config
#
# Copyright:: 2022, The Authors, All Rights Reserved.

template node['tomcat']['service'] do
    source 'tomcat_service.txt'
    owner 'root'
    mode 0644
end

execute 'reload_daemon' do
    command 'sudo systemctl daemon-reload'
end

service 'tomcat' do
    action [:enable, :start]
end