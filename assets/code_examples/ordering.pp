package { 'httpd':
  ensure => 'present',
}

service { 'httpd':
  ensure   => 'running',
  requires => Package['httpd']
}
