class httpd::params {
 case $facts['os']['name'] {
  /^(Debian|Ubuntu)$/: {
    $package_name = 'apache2'
    $service_name = 'apache2'
  }
  'CentOS', 'RedHat': {
    $package_name = 'httpd'
    $service_name = 'httpd'
  }
  default: {
   fail("${facts['operatingsystem']} is not supported")
  }
 }
}
