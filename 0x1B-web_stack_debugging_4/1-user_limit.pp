# Ensure that the parent directory exists
file { '/etc/security':
  ensure => directory,
}

# Define the limits for the user in /etc/security/limits.conf
file { '/etc/security/limits.conf':
  ensure  => present,
  content => "holberton hard nofile -1\nholberton soft nofile -1\n",
}
