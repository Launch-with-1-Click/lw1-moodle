# https://moodle.org/plugins/download.php/8220/mod_questionnaire_moodle28_2014111002.zip
default[:lw1_moodle][:plugins][:base_url] = 'https://moodle.org/plugins/download.php/'

default[:lw1_moodle][:plugins][:modules] = {
  "questionnaire" => {
    version: "2.9.0",
    location: "/8762/mod_questionnaire_moodle29_2015051101.zip"
    checksum: "06a2638f40514fbfd058bce8c518d36c3a18d293fcbcf510a264ec2cea90e05f"
  },
  "scheduler" => {
    version: "2.7.1",
    location: "/8500/mod_scheduler_moodle29_2014090102.zip",
    checksum: "568be7d66dd3824c6efe1b1c18137d1ddcfd9fe34a89a2ccfc26507cda8d1874"
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
