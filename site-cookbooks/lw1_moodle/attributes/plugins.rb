# https://moodle.org/plugins/download.php/8220/mod_questionnaire_moodle28_2014111002.zip
default[:lw1_moodle][:plugins][:base_url] = 'https://moodle.org/plugins/download.php/'

default[:lw1_moodle][:plugins][:modules] = {
  "questionnaire" => {
    version: "3.0.0",
    location: "9600/mod_questionnaire_moodle30_2015102800.zip",
    checksum: "3ec38b5a36e0c3cf8446c88f9b1dc8bcbd488815a9282d0d499000322e544f44"
  },
  "scheduler" => {
    version: "2.9.0",
    location: "/9614/mod_scheduler_moodle30_2015102900.zip",
    checksum: "31f179bd65654eeb68fbf2fc2a8db4031018ced1a7c1188f834924b30dd5953a"
  },
  "pcast" => {
    version: "2.9",
    location: "/10415/mod_pcast_moodle30_2016013100.zip",
    checksum: "b765620765fd5734793954a23ef57e16e82e6ea673dd83bbb91a291e20c327b1"
  },
}

default[:lw1_moodle][:plugins][:blocks] = {
  "configurable_reports" => {
    version: "3.0.1",
    location: "/10535/block_configurable_reports_moodle30_2016020101.zip",
    checksum: "b5602da740372082fef02f21ef2a1ad2708ee435c110f464272b8a7b6661d311"
  }
}
