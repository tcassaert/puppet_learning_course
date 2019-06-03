class profile_apache::vhost (){
  ::apache::vhost { 'vhost_1':
    docroot => '/var/www/html/vito/vhost_1',
    port    => 443,
  }

  ::apache::vhost { 'vhost_2':
    docroot => '/var/www/html/vito/vhost_2',
    port    => 8000,
  }
}
