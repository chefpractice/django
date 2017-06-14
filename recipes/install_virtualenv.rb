#
# Cookbook:: django
# Recipe:: install_virtualenv
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'epel-release'
package 'python-pip'

execute 'pip install virtualenv'
