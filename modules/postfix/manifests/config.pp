class postfix::config {
	file { '/etc/postfix/main.cf':
		ensure => present,
		source => 'puppet:///modules/postfix/main.conf',
		notify => Service[postfix],
	}
}
#include postfix::config
