# Class hiawatha
#
# This modules manages Hiawatha webserver
#
# This manifest manages service status.
#
class hiawatha::service {
	
# This is the standar way to start a service on Ubuntu (Debian distro)
#	if $lsbdistid == 'Ubuntu' {
#		exec { 'execute hiawatha service':
#				command => "/usr/bin/service hiawatha start",
#		}
#	}
#	else {
#		exec { "/etc/init.d/hiawatha start": }
#	} 
#	
# hiawatha webserver can be run just executing the name of the service
	package { "hiawatha":
		ensure => installed,
#		enable => true,
	}
	service { "hiawatha":
		ensure => running,
	
	}
}

include hiawatha::service
