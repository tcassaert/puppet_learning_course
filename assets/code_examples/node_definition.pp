node /prod/ {
  notify { 'Hello VITO!': }
  include ::vhost_module
}
