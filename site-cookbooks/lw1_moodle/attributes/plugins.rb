# https://moodle.org/plugins/download.php/8220/mod_questionnaire_moodle28_2014111002.zip
default[:lw1_moodle][:plugins][:base_url] = 'https://moodle.org/plugins/download.php/'

default[:lw1_moodle][:plugins][:modules] = {
  "questionnaire" => {
    location: "/8220/mod_questionnaire_moodle28_2014111002.zip",
    checksum: "fa76a26de84170203feeec3c920d1c998aafef8c9cd76b44650fdeec801bf76c"
  },
  "scheduler" => {
    location: "/6800/mod_scheduler_moodle28_2014090100.zip",
    checksum: "e635ef18fe05ece8140dc4475cee03d6d10f767edaa8943962276f2d55c9257a"
  },
  "pcast" => {
    location: "/6306/mod_pcast_moodle27_2014061600.zip",
    checksum: "a67db8f347367476cc149b6c1bd1278183cc841855cbe911824befc12e90194d"
  },
}

default[:lw1_moodle][:plugins][:blocks] = {
  "configurable_reports" => {
    location: "/6884/block_configurable_reports_moodle27_2011040115.zip",
    checksum: "e6ad965f1fa3a4764891adbe817badbfc49281e7e2244553007a7d2c68d5cc53"
  },
  "quickmail" => {
    location: "/6473/block_quickmail_moodle27_2014042914.zip",
    checksum: "1a7142f68e9cbb0205cbffcec3ad80f4c9c021f1d4b53faa11854ec449513233"
  }
}
