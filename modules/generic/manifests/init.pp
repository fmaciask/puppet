class generic {

###  Common folders requirements
    package {  "links":
        ensure => installed,
    }
#    package { [ "lame", "poc-streamer" , "alsa-utils" ]:
 #   ensure => present,
  #  }

include smartmontools
}
