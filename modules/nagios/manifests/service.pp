class nagios::service {
	package { "nagios3":
		ensure => installed,
		enable => true,
		notify => Service['nagios3'],
	}
	package { "nagios-nrpe-plugin":
		ensure => installed,
		enable => true,
	}
	service {"nagios3":
		ensure => running,
		require => Package['nagios3'],
	}
	
}
