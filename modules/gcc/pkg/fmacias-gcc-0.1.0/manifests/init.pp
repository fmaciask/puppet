# == Class: gcc
#
# Full description of class gcc here.
#
# === Parameters
#
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
#
# === Authors
#
# Forlidar Macias <info@forlidar.com>
#
class gcc {
	include gcc::params
	package { $gcc::params::gcc_package:
		ensure => installed
	}
}
