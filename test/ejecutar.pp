class ejecuta {
#	file { "/etc/puppet/test/helloworld.sh":
#		ensure => true,
#	}
	exec { "ejecuta bash simple": 
#                require => File["/etc/puppet/test/helloworld.sh"],
                command => "/bin/bash /etc/puppet/test/helloworld.sh",
#                subscribe => File["/etc/apt/sources.list.d/${name}.list"],
#                refreshonly => true,
        }
	if $lsbdistid == 'Ubuntu' {
		notify { "I'm Ubuntu": }
	}

}

include ejecuta
