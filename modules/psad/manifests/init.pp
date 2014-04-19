# Clase principal de psad
# /etc/puppet/module/psad/manifests/init.pp
class psad {
  class { 'psad::package':
    notify => Class['psad::service'],
  }

  class { 'psad::config':
    require => Class['psad::package'],
    notify  => Class['psad::service'],
  }

  class { 'psad::service': }	

#	include psad::package
#	include psad::config
#	include psad::service
}

