class psad {
  class { 'psad::package':
    notify => Class['psad::service'],
  }

  class { 'psad::config':
    require => Class['psad::package'],
    notify  => Class['psad::service'],
  }

  class { 'psad::service': }	
}