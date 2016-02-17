ark "moodle" do
  url node[:lw1_moodle][:install][:download_url]
  version node[:lw1_moodle][:install][:version]
  path "/var/www"
  checksum  node[:lw1_moodle][:install][:checksum]
  owner 'root'
  action :put
end

node[:lw1_moodle][:plugins][:modules].map do |mod_name, spec|
  ark mod_name do
    url [ node[:lw1_moodle][:plugins][:base_url], spec[:location]].join
    path "/var/www/moodle/mod"
    checksum spec[:checksum]
    owner 'root'
    action :put
  end
end

node[:lw1_moodle][:plugins][:blocks].map do |block_name, spec|
  ark block_name do
    url [ node[:lw1_moodle][:plugins][:base_url], spec[:location]].join
    path "/var/www/moodle/blocks"
    checksum spec[:checksum]
    owner 'root'
    action :put
  end
end

mount "/var/www/html" do
  device "/var/www/moodle"
  fstype "none"
  options "bind,rw"
  action [:mount, :enable]
end

cookbook_file "/etc/httpd/conf.d/moodle.conf" do
  source "httpd/moodle.conf"
end

directory "/var/www/moodledata" do
  action :create
  mode 0775
  group "apache"
  owner "root"
end

%w[
aspell
graphviz
ghostscript
mailx
].map do |moodle_addon|
  package moodle_addon
end
