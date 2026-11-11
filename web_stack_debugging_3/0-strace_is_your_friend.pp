# Fix WordPress 500 Internal Server Error by correcting the file typo or missing include
exec { 'fix-wordpress':
  command => 'sed -i "s/wp-settings.phpp/wp-settings.php/g" /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
}
