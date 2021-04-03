# Adding Lines to /etc/ssh/ssh_config
file_line { 'ssh_config adding IdentityFile':
  ensure => 'present',
  line   => 'IdentityFile ~/.ssh/holberton',
  path   => '/etc/ssh/ssh_config',
}
file_line { 'ssh_config adding PasswordAuthentication':
  ensure => 'present',
  line   => 'PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}
