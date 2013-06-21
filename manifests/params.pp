class r10k::params {

  case $::osfamily {
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
      }
      'RedHat': {
        case $::lsbmajdistrelease{
          '5','6': {
            $r10k_bin = '/usr/bin/r10k'
          }
          default: {
            fail("${::osfamily} - ${::lsbdistcodename} is not supported by the r10k module")
          }
        }
      }
      default: {
        fail("${::osfamily} - ${::lsbdistcodename} is not supported by the r10k module")
      }
  }
}
