#
# Cookbook:: 4_Windows
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\W32time\\TimeProviders\\NtpClient" do
    values [{
      name:  'Enabled',
      type:  :dword,
      data:  1,
    }]
    recursive true
    action :create
  end
  
  registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\W32time\\TimeProviders\\NTPServer" do
    values [{
      name:  'Disabled',
      type:  :dword,
      data:  0,
    }]
    recursive true
    action :create
  end