#
# Cookbook:: django
# Recipe:: install_pip
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'epel-release'
package 'python-pip'

execute 'pip install django'
