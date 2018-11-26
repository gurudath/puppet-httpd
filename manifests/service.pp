class httpd::service(
 String $service_name = $::httpd::service_name,
) {
 service { 'httpd-service':
  ensure => running,
  name   => $service_name,
 }
}
