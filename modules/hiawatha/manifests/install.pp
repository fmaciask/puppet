class hiawatha::install {
	
	include cmake
	exec { "dpkg -i /etc/puppet/modules/hiawatha/files/hiawatha_9.2_amd64.deb":
		onlyif => [ "whereis hiawatha | cut -d: -f2" ],
		#path =>	["/usr/bin","/usr/sbin"],
		path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
	}
	# Requiere cmake para realizar la instalación
	Class['cmake'] ~> Class['hiawatha::install']
}
