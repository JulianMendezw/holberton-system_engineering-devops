# Script that configures NGINX
exec { 'exec_0':
  command => 'sudo sudo apt-get update -y',
}

exec { 'exec_1':
  command => 'sudo apt-get install nginx -y',
}

exec { 'exec_2':
  command => 'echo "Holberton School" > /var/www/html/index.nginx-debian.html',
}

-> file_line { 'add header' :
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "\tadd_header X-Served-By ${hostname};",
  after  => 'server_name _;',
}

}
exec { 'exec_7':
  command => 'service nginx restart',
}
