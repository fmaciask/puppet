class psad {
  class { 'psad::package':
    notify => Class['psad::service'],
  }

  class { 'psad::config':
    require => Class['psad::package'],
    notify  => Class['psad::service'],
  }

  class { 'psad::service': }	

	include psad::package
	include psad::config
	include psad::service
}

include psad::package
include psad::config
include psad::service
