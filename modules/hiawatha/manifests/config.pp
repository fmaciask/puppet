# Name of manifest: config.pp
# This manifests helps configuring parameters for Hiawatha webserver
class hiawatha::config {
	file { '${hiawatha::params::$hwt_confdir}/hiawatha.conf':
		ensure => file,
		require => Package['hiawatha'],
#		content => template('hiawatha/templates/hiawatha.conf.erb'),
		source  => "puppet:///modules/hiawatha/templates/hiawatha.conf.erb",

#		content  => template("nagios_agents/nrpe_checks/check_puppet_agent.sh.erb"),

	}
}
