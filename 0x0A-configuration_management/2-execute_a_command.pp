# kill process killmenow
exec { 'Kill process':
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
    command => 'pkill killmenow'
    }
