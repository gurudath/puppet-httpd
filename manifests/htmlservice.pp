class httpd::htmlservice(
 String $service_name = $::httpd::service_name,
) {
   file { "/var/www/html/guru":
      ensure => "directory",
      mode   => '0777',
    } ->
   file { "/var/www/html/guru/index.html":
     ensure  => "present",
     content => "Its working great.......!!!!",
     mode    => '0644'
   }
}
