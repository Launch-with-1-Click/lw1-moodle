default[:lw1_moodle][:user] = 'apache'
default[:lw1_moodle][:group] = 'apache'

## Sum = Sha256
default[:lw1_moodle][:install] = {
  version: '2.9.1',
  version_base: 'stable29',
  checksum: "bfc9398904809ed6041e8bcbdb75d7bc1917d5a0ff47fd0069812d783e03c020",
  base_url: "https://download.moodle.org"
}

default[:lw1_moodle][:install][:download_url] = [
  node[:lw1_moodle][:install][:base_url],
  node[:lw1_moodle][:install][:version_base],
  "moodle-#{node[:lw1_moodle][:install][:version]}.tgz"
].join("/")

