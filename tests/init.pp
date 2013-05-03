class { 'r10k':
  configfile => '/tmp/r10k.yaml',
  }
include r10k::cron
