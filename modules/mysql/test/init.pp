class mysql {
	ensure => true,
	hasstatus => true,
notify {"Modulo mysql":}
}
