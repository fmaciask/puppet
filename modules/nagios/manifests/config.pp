class nagios::config {
	directory { '/var/lib/nagios3':
		ensure => present,
		owner => 'nagios',
		group => 'nagios',
	}
}
