# Class: psad::config
#
# This module manages PSAD bootstrap and configuration
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class psad::config inherits psad::params {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { "${psad::params::psad_conf_dir}":
    ensure => directory,
  }

  file { "${psad::config::psad_run_dir}":
    ensure => directory,
  }

#  file { "${psad::params::psad_conf_dir}/psad.conf":
#    ensure  => present,
#    content => template('/etc/puppet/modules/psad/templates/psad.conf.erb'),
#    source => 'puppet:///modules/psad/psad.conf',
#  }
	file { '/etc/psad/psad.conf':
		ensure  => present,
		source => 'puppet:///modules/psad/psad.conf',		
	}

}
