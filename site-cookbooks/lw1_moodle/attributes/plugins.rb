# https://moodle.org/plugins/download.php/8220/mod_questionnaire_moodle28_2014111002.zip
default[:lw1_moodle][:plugins][:base_url] = 'https://moodle.org/plugins/download.php/'

default[:lw1_moodle][:plugins][:modules] = {
  "questionnaire" => {
    version: "2.9.1",
    location: "/9599/mod_questionnaire_moodle29_2015051103.zip",
    checksum: "dfb81fe43b871d0e6b98015f499cb9de9b93a086df6c55e6af8ea8d9c8994af3"
  },
  "scheduler" => {
    version: "2.9.0",
    location: "/9614/mod_scheduler_moodle30_2015102900.zip",
    checksum: "31f179bd65654eeb68fbf2fc2a8db4031018ced1a7c1188f834924b30dd5953a"
  },
  "pcast" => {
    version: "2.9",
    location: "/8649/mod_pcast_moodle29_2015050500.zip",
    checksum: "bc32f6fd146d5f0b6f79104576d5ca548bc9e476ea4d50c3c03d43a7fa157052"
  },
}

default[:lw1_moodle][:plugins][:blocks] = {
  "configurable_reports" => {
    version: "2.3.7",
    location: "/9071/block_configurable_reports_moodle29_2011040119.zip",
    checksum: "1769af4f28f9e082d8361cbeb1ecd99a95ce0dcd4e5fcf0c1fa20e481e87b659"
  }
}
