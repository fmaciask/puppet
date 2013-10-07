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
	exec { 'execute hiawatha service':
		command => "/usr/bin/service hiawatha start",
	}
}

include hiawatha::service
