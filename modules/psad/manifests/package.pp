# Class: psad::package
#
# This module manages PSAD package installation
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class psad::package {
  anchor { 'psad::package::begin': }
  anchor { 'psad::package::end': }

  case $operatingsystem {
    centos,fedora,rhel: {
      class { 'psad::package::redhat':
        require => Anchor['psad::package::begin'],
        before  => Anchor['psad::package::end'],
      }
    }
    debian,ubuntu: {
      class { 'psad::package::debian': 
        require => Anchor['psad::package::begin'],
        before  => Anchor['psad::package::end'],
      }
    }
    opensuse,suse: {
      class { 'psad::package::suse':
        require => Anchor['psad::package::begin'],
        before  => Anchor['psad::package::end'],
      }
    }
  }
}
