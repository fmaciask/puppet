class postfix::config {
	file { '/etc/postfix/main.cf':
		ensure => present,
		notify => Service[postfix],
	}
}
#include postfix::config
