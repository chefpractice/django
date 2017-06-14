#
# Cookbook:: django
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django::install_virtualenv' do
  context 'When all attributes are default, on an centos7.2' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.2.1511')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it ' installs epel-release and python-pip' do
      expect(chef_run).to install_package( 'epel-release' )
      expect(chef_run).to install_package( 'python-pip' )
    end
    it ' installs python virtualenv ' do
      expect(chef_run).to run_execute( "pip install virtualenv" )
      expect(chef_run).to run_execute( "pip install virtualenv" )

    end


  end
end
