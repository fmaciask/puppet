user { 'testpup':
  ensure => absent,
  home => '/home/testpup',
  managehome => false,
}
