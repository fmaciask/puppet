class mysql {
	#ensure => true,
	#hasstatus => true,
	notify {"Modulo mysql":}
	package	{ 'mysql':
		ensure => installed,
	}
	service { 'mysql':
		ensure => running,
		enabled => true,
		hasstatus => true,
	}
}

#notify	{" Te notifico.":}

#class { 'mysql': }
