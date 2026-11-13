# Raises the nginx open file limit so it can handle many concurrent requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/-n 15/-n 4096/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
}

exec { 'restart-nginx':
  command => '/etc/init.d/nginx restart',
  require => Exec['fix--for-nginx'],
}
