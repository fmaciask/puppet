class smartctl {
	package { "smartctl":
		ensure => installed,
		enable => true,
	}
}

include smartctl
