class postfix::package {
	package {"postfix":
		ensure => installed,
		notify => Service[postfix]
	}
}
#include postfix::package
