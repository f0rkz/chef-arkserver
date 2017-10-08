#
# Cookbook:: chef-arkserver
# Recipe:: default
#
# Author:: Nick Gray (f0rkz@f0rkznet.net)
#
# Copyright:: 2017 f0rkznet.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# lib32gcc1 required for steamcmd api
package 'lib32gcc1'
package 'wget'

ark_base_dir = node['ark']['install_dir'] + '/' + node['ark']['appid']
ark_config_dir = ark_base_dir + '/ShooterGame/Saved/Config/LinuxServer'

user node['steam']['user'] do
  system true
  home node['steam']['steamcmd']['install_dir']
  shell '/bin/bash'
  action :create
end

# Create the gameserver install directory
directory node['ark']['install_dir'] do
  owner node['steam']['user']
  group node['steam']['user']
  mode '0755'
  recursive true
  action :create
  notifies :install, 'steamcmd_app[install ark]', :immediately
end

steamcmd_app 'install ark' do
  base_game_dir node['ark']['install_dir']
  user node['steam']['user']
  group node['steam']['user']
  appid node['ark']['appid']
  action :nothing
end

bash 'Install ark Steamcmd' do
  user node['steam']['user']
  cwd ark_base_dir
  code <<-EOH
  mkdir -p Engine/Binaries/ThirdParty/SteamCMD/Linux
  cd Engine/Binaries/ThirdParty/SteamCMD/Linux/
  wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
  tar -xf steamcmd_linux.tar.gz
  EOH
  not_if { ::File.directory?("#{node['ark']['install_dir']}/Engine/Binaries/ThirdParty/SteamCMD/Linux") }
end

directory ark_config_dir do
  owner node['steam']['user']
  group node['steam']['user']
  mode '0755'
  recursive true
  action :create
  notifies :run, 'execute[chown config directory]', :immediately
end

execute 'chown config directory' do
  command <<-EOF
  chown -R #{node['steam']['user']}:#{node['steam']['user']} #{ark_base_dir}
  EOF
  action :nothing
end

template '/etc/systemd/system/ark.service' do
  source 'ark.service.erb'
  owner 'root'
  group 'root'
  mode '0744'
  notifies :enable, 'service[ark]', :immediately
  notifies :run, 'execute[reload systemd]', :delayed
  notifies :start, 'service[ark]', :delayed
end

execute 'reload systemd' do
  command 'systemctl daemon-reload'
  action :nothing
end

service 'ark' do
  supports status: true
  action :nothing
end
