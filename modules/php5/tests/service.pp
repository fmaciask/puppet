# This manifests checks and guarantees that php5 package is installed.
class php5::service {
	if $::operatingsystem == ['Ubuntu','Debian','Mint'] {
		package { 'php5':
			ensure => installed,
			running => true,
		}
		
	}
}
include php5::service
