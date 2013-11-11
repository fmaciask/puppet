# Name of manifest: config.pp
# This manifests helps configuring parameters for Hiawatha webserver
class hiawatha::config {
	file { '${hiawatha::params::$hwt_confdir}/hiawatha.conf':
		ensure => file,
		require => Package['hiawatha'],
		content => template('puppet::modules/hiawatha/templates/hiawatha.conf.erb'),
	}
}
