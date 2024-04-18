# limit
exec { 'update -> ulimit':
  command  => "sed -i 's/^ULIMITED=.*/ULIMITED=\"-n 15000\"/' /etc/default/nginx",
  provider => 'shell',
}

-> exec { 'restart':
  command  => 'service nginx restart',
  provider => 'shell',
}
