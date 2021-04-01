# Adding Lines to /etc/ssh/ssh_config
file_line { 'ssh_config':
  ensure => 'present',
  line   => 'IdentityFile ~/.ssh/holberton',
  path   => '/etc/ssh/ssh_config',
}->
file_line { 'ssh_config':
  ensure => 'present',
  line   => 'PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}
