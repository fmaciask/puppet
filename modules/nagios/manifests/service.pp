class nagios::service {
	package { "nagios3":
		ensure => installed,
		notify => Service['nagios3']
	}
	package { "nagios-nrpe-plugin":
		ensure => installed,
	}
	file { "/etc/nagios3/nagios.cfg":
		ensure => present,
		require => Package['nagios3'],
		notify => Service['nagios3'],
		
	}
	service { "nagios3":
		ensure => running,
		require => File['/etc/nagios3/nagios.cfg']
	}
	
}

include nagios::service
