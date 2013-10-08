# Class hiawatha
#
# This modules manages Hiawatha webserver
#
# This manifest manages service status.
#
class hiawatha::service {
	service { 'hiawatha':
		ensure => running,
		enable => true,
#		hasstatus => true,
		start => 'service hiawatha start',
	}
}
