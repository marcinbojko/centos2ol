# frozen_string_literal: true

control 'migration-with-extra-packages' do
  title 'Migration completes despite EPEL packages installed (--skip-broken exercised)'

  describe file('/etc/oracle-release') do
    it { should exist }
  end

  describe command('rpm -q oraclelinux-release') do
    its('exit_status') { should eq 0 }
  end

  describe command('rpm -q centos-release') do
    its('exit_status') { should_not eq 0 }
  end

  # EPEL-origin packages should survive: migration must not abort mid-run
  describe package('htop') do
    it { should be_installed }
  end

  describe package('jq') do
    it { should be_installed }
  end
end
