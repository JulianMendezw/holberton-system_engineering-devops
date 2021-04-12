# Script that configures NGINX
exec { 'exec_0':
  command => 'sudo sudo apt-get update -y',
}

exec { 'exec_1':
  command => 'sudo apt-get install nginx -y',
}

exec { 'exec_2':
  command => 'echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}

exec { 'exec_3':
  command     => 'sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me $GG;/" /etc/nginx/sites-enabled/default',
}

exec { 'exec_4':
  command     => 'sudo sed -i "/location \/ {/ a\\\t\tadd_header X-Served-By \$hostname;" /etc/nginx/sites-available/default',
}

exec { 'exec_5':
  command => 'sudo service nginx start',
}
