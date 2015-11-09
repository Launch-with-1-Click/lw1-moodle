default[:lw1_moodle][:user] = 'apache'
default[:lw1_moodle][:group] = 'apache'

## Sum = Sha256
default[:lw1_moodle][:install] = {
  version: '2.9.3',
  version_base: 'stable29',
  checksum: "48f59bd77df53fb5f608da492f09c21eb7c8994c3ddce39fa7a9fd8e3e0e8f46",
  base_url: "https://download.moodle.org"
}

default[:lw1_moodle][:install][:download_url] = [
  node[:lw1_moodle][:install][:base_url],
  node[:lw1_moodle][:install][:version_base],
  "moodle-#{node[:lw1_moodle][:install][:version]}.tgz"
].join("/")

