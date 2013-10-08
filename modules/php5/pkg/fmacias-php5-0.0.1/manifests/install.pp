# php5::install
#This manifest makes the installation if it's not installed already
class php5::install {
	# Extract the file module/php5/files/php-5.5.4.tar.gz
	exec { "tar -ztxf /etc/puppet/modules/php5/files/php-5.5.4.tar.gz":
		path => /home/$user
	}

}
include php5::install
