class httpd(
 String $package_name = $::httpd::params::package_name,
 String $service_name = $::httpd::params::service_name,
) inherits ::httpd::params {
 class { '::httpd::install': } ->
 class { '::httpd::service': } ->
 class { '::httpd::htmlservice': }
}
