class motd {
file { '/etc/motd':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  content => 'Hello world! Puppet is awesome.',
}
}
include motd
