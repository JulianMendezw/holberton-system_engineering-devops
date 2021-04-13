# Script that configures NGINX
exec { 'exec_0':
  command => 'sudo sudo apt-get update -y',
}

-> package { 'nginx':
  ensure => installed,
}

-> file_line { 'add header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => 'add_header X-Served-By $hostname;',
  after  => 'server_name _;',
}

}
-> service { 'nginx':
  ensure => running,
}
