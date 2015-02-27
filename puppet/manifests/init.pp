exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'git':
  ensure => present,
}

package { 'zip':
  ensure => present,
}

file { '/var/www/':
  ensure => 'directory',
}

include nginx, php, mysql
