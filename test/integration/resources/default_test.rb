describe user('steam') do
  its('home') { should eq '/opt/steam' }
  its('shell') { should eq '/bin/bash' }
end

describe file('/opt/steam/steamcmd.sh') do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe service('ark') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

ark_config = '/opt/arkserver/376030/ShooterGame/Saved/Config/LinuxNoEditor/GameUserSettings.ini'

describe file(ark_config) do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe command('ps -ef | grep ShooterGameServer') do
  its('exit_status') { should eq 0 }
end
