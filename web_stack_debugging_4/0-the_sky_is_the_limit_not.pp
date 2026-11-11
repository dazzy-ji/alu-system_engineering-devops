# Increase the ULIMIT of file descriptors for Nginx to handle high concurrency
exec { 'fix--for-nginx':
  command => 'sed -i "s/-n 15/-n 4096/g" /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin'],
}
