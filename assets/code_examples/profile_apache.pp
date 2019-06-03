class profile_apache (
  String  $docroot     = '/var/www/html',
  Integer $port        = 80,
  String  $php_version = '7.3',
){
  class { '::apache':
    docroot => $docroot,
    port    => $port,
  }

  class { '::php':
    version => $php_version,
  }
}
