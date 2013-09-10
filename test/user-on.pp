user { 'testpup':
  ensure => present,
  home => '/home/testpup',
  managehome => false,
}
