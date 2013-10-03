class hiawatha::install {
	#package { "hiawatha":
	#	ensure => "installed",
	#}
	exec { "dpkg -i /etc/puppet/modules/hiawatha/files/hiawatha_9.2_i686.deb":
		onlyif => [ "whereis hiawatha | cut -d: -f2" ],
		#whereis hiawatha | cut -d: -f2
	}
}
