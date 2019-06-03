define apache::vhost (
  String  $docroot  = '/var/www/html',
  Integer $port     = 80,
){
  file { "/etc/httpd/conf.d/${title}" :
    ensure  => 'present',
    content => template('apache/vhost.conf.erb'),
  }

  firewall { "Allow port ${port}" :
    action => 'accept',
    port   => $port,
  }
}
