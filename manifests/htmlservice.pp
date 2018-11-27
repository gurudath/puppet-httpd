class httpd::htmlservice(
 String $service_name = $::httpd::service_name,
) {
   file { "/var/www/html/guru":
      ensure => "directory",
      mode   => '0777',
    } ->
   file { "/var/www/html/guru/index.html":
     ensure  => "file",
#     content => "Its working great.......!!!!",
     source => 'puppet:///modules/httpd/myfile.txt',
     mode    => '0644'
   }
}
