class hiawatha::install {
	
	#In the next step, the complete file MUST be inside the right path
	# I download the files from http://www.hiawatha-webserver.org/download
	exec { "dpkg -i /etc/puppet/modules/hiawatha/files/hiawatha_9.2_amd64.deb":
		
		path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
		creates => "/usr/sbin/hiawatha",
	}
}
