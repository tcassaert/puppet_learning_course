class vito_module {
  package { 'httpd':
    ensure => 'present',
  }

  service { 'httpd':
    ensure => 'running',
    enable => true,
  }

  file { '/etc/httpd/http.conf':
    source => 'puppet:///modules/vito_module/http.conf',
    notify => Service['httpd'],
  }
}
