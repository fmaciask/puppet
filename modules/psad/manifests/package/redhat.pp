# Class: psad::package::redhat
#
# This module manages PSAD package installation on RedHat based systems
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
class psad::package::redhat {
  $redhat_packages = ['psad']
  package { $redhat_packages:
    ensure => present,
  }
}
