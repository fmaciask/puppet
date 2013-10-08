# This manifests checks and guarantees that php5 package is installed.
class php5::service {

	#This should install from repository
	package { 'php5':
		ensure => latest,
	}
	service { 'php5':
		ensure => running,
		enable => true,
	}
}
include php5::service
