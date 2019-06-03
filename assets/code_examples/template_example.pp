class vito_module (
  String  $docroot        = '/var/www/html',
  Integer $port           = 80,
  String  $vhost_location = '/etc/httpd/conf.d/vhost.conf',
) {

  file { $vhost_location:
    ensure  => 'present',
    content => template('vito_module/vhost.conf.erb'),
  }
}
