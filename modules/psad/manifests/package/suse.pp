# Class: psad::package::suse
#
# This module manages PSAD package installation for SuSE based systems
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#  This module contains all of the required package for SuSE. Apache and all
#  other packages listed below are built into the packaged RPM spec for
#  SuSE and OpenSuSE.
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class psad::package::suse {
  $suse_packages = [
    'psad' 
  ]

  package { $suse_packages:
    ensure => present,
  }
}
