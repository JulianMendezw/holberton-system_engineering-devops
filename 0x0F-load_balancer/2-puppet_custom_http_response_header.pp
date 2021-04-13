# Install Nginx web server

exec { 'update server':
  command  => 'apt-get update',
}
->
package { 'nginx':
  ensure   => installed,
}
->
file_line { 'custom HTTP header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;'
}
->
service { 'nginx':
  ensure  => running,
}
