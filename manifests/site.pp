node default {
  file {'/root/README':
    ensure => file,
    content => 'This is exciting',
    owner => root,
  }
}
