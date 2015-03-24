default[:lw1_moodle][:user] = 'apache'
default[:lw1_moodle][:group] = 'apache'

## Sum = Sha256
default[:lw1_moodle][:install] = {
  version: '2.8.5',
  version_base: 'stable28',
  checksum: "1a159a193010cddedce10ee009184502e6f732e4d7c85167d8597fe5dff9e190",
  base_url: "https://download.moodle.org"
}

default[:lw1_moodle][:install][:download_url] = [
  node[:lw1_moodle][:install][:base_url],
  node[:lw1_moodle][:install][:version_base],
  "moodle-#{node[:lw1_moodle][:install][:version]}.tgz"
].join("/")

