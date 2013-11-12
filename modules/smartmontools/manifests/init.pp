class smartmontools {
	package { 'smartmontools':
		ensure => installed,
	}
	service { 'smartmontools':
		ensure => running,
		enable => true,
	}
}

include smartmontools
