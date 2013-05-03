class r10k::params {

  case $::operatingsystem {
      'Debian': {
        case $::lsbdistcodename {
          'squeeze': {
            $r10k_bin = '/var/lib/gems/1.8/bin/r10k'
          }
          'precise', 'wheezy': {
            $r10k_bin = '/usr/local/bin/r10k'
          }
          'lucid': {
            $r10k_bin = '/var/lib/gems/1.8/bin/r10k'
          }
        }
      'RedHat': {
        $r10k_bin = '/usr/bin/r10k'
        default: { fail("${::lsbdistcodename} is not supported by the r10k module") }
      }
    default: { fail("${::lsbdistcodename} is not supported by the r10k module") }
  }
}
