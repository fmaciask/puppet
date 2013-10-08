# == Class: hiawatha
#
# Hiawatha is a webserver. Made for being monitored and more secure, avoiding exploits
#
# === Parameters
#
# Document parameters here.
#
#
class hiawatha {
	include hiawatha::params
	include hiawatha::config
	include hiawatha::service
	include hiawatha::install

}
