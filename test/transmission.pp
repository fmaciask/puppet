service { 'transmission-daemon' :
	ensure => running,
	#path => '/etc/transmission-daemon' ,
	path => '/root/.config/transmission-daemon/settings.json',
	provider => 'upstart',
}
