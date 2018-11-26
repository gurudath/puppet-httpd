class httpd::install(
 String $package_name = $::httpd::package_name,
 String $service_name = $::httpd::service_name,
) {
# exec { 'apt-update':                   
#  command => '/usr/bin/apt-get update'
# } 
 package { 'httpd-package':
    ensure  => present,
    name    => $package_name,
#    require => Exec['apt-update'],
  }
}
