default[:lw1_moodle][:user] = 'apache'
default[:lw1_moodle][:group] = 'apache'

## Sum = Sha256
default[:lw1_moodle][:install] = {
  version: '3.0.2',
  version_base: 'stable30',
  checksum: "6f6eb95f0e354dc519067538ce60c54151b998efed6f981084ec929266d1b149",
  base_url: "https://download.moodle.org"
}

default[:lw1_moodle][:install][:download_url] = [
  node[:lw1_moodle][:install][:base_url],
  node[:lw1_moodle][:install][:version_base],
  "moodle-#{node[:lw1_moodle][:install][:version]}.tgz"
].join("/")

