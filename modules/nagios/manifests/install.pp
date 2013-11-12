class nagios::install {
	package { "nagios3":
		ensure => installed,
		enable => true,
	}
	package { "nagios-nrpe-plugin":
		ensure => installed,
		enable => true,
	}
}
