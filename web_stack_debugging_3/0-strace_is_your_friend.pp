# Replace .phpp with .php in wp-settings.php to fix Apache 500 error
exec { 'replace_phpp_with_php':
  command => 'sed -i "s/\.phpp/\.php/g" /var/www/html/wp-settings.php',
  path    => ['/usr/bin', '/bin'],
}
