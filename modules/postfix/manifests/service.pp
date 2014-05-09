class postfix::service {
	service { "postfix":
		ensure => running,
		require => File['/etc/postfix/main.cf'],
        }
}
#include postfix::service
