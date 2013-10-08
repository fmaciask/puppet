# Name of manifest: params.pp
#
# In this manifest I declare all the parameters that can be configure for the Hiawatha service to run
#
class hiawatha::params {
	$hwt_confdir	= '/etc/hiawatha'
}
