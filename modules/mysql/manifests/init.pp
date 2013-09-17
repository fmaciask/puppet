class mysql {
#	ensure => true,
#	hasstatus => true,
#notify {"Modulo mysql":}
	package { 'mysql-server' :
		ensure => installed,
	}
	#file { '/etc/mysql/my.cnf' : 
	#	source => '/etc/puppet/modules/mysql/files',
	#	owner => 'root',
	#	group => 'root',
	#	mode => '640',
	#	require => Package['mysql-server'],
	#}
	service { 'mysql':
		ensure => running,
		enable => true,
		hasstatus => true,
		hasrestart => true,
	}
}
