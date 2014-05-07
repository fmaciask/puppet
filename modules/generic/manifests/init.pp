class generic {

###  Common folders requirements
    package {  "links":
        ensure => installed,
    }

# Modules included
include cowsay
include smartmontools
#include mysql
include gcc
include cmake
#include hiawatha
include iftop
include psad
}
