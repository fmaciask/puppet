# Class hiawatha
#
# This modules manages Hiawatha webserver
#
# This manifest manages service status.
#
class hiawatha::service {
#	service { 'hiawatha':
#		ensure => running,
#		enable => true,
#		hasstatus => true,
#		status => 0,
#		start => 'service hiawatha start',
#		stop => 'service hiawatha stop',
#	}
	if $lsbdistid == 'Ubuntu' {
		exec { 'execute hiawatha service':
				command => "/usr/bin/service hiawatha start",
		}
	}
	else {
		exec { "/etc/init.d/hiawatha start": }
	} 
}

include hiawatha::service
