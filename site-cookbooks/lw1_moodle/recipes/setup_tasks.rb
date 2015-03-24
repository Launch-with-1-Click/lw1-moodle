directory "/opt/lw1/tasks" do
  action :create
  recursive true
end

template "/opt/lw1/tasks/first_boot.rb" do
  source "tasks/first_boot.erb"
end

# cookbook_file "/opt/lw1/tasks/config.php.erb" do
#   source "lw1_tasks/config.php.erb"
# end

cookbook_file "/opt/lw1/tasks/date.ini.erb" do
  source "lw1_tasks/date.ini.erb"
end

cron "setup_moodle_on_init" do
  action :create
  time :reboot
  command "/opt/chef/bin/chef-apply /opt/lw1/tasks/first_boot.rb"
end