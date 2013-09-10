include nginx

nginx::resource::vhost { 'engine.forlidar.com':
  ensure       => present,
	www_root => '/etc/nginx/sites_available',
}

