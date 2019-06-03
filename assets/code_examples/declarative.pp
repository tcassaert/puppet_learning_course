package { 'httpd':
  ensure   => 'present',
  provider => 'yum',
}

file { '/tmp/test':
  content => 'Example content',
  mode    => '0660',
  owner   => 'vito',
  group   => 'vito',
}
