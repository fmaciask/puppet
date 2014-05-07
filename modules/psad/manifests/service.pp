# Servicio psad
class psad::service {

	service { "psad":
	    ensure     => "running",
	    enable     => true,
	    hasstatus  => true,
	    hasrestart => true,
	}	
}
