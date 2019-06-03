node /prod/ {
  class { '::vito_module':
    docroot => '/var/www/html/vito',
  }
}
