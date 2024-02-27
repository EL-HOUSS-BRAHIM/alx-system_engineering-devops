# File: nginx_setup.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
    server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
            try_files \$uri \$uri/ =404;
        }

        location = /redirect_me {
            return 301 https://www.example.com;
        }
    }
  ",
  notify => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => running,
  enable => true,
}

# Create Hello World HTML file
file { '/var/www/html/index.html':
  ensure  => present,
  content => '<!DOCTYPE html><html><head><title>Hello World!</title></head><body><h1>Hello World!</h1></body></html>',
  require => Package['nginx'],
}

