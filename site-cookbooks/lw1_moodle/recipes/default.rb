#
# Cookbook Name:: lw1-pentaho
# Recipe:: default
#
# Copyright 2014, HiganWorks LLC
#
# All rights reserved - Do Not Redistribute
#

include_recipe "#{cookbook_name}::packages"
#include_recipe "#{cookbook_name}::services"
include_recipe "#{cookbook_name}::moodle"
include_recipe "#{cookbook_name}::setup_tasks"

