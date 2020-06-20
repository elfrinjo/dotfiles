############################################################################
###
##         Base Config for all systems
#
#

## Some Packages...
package {'fortune-mod': ensure => installed}
package {'git':         ensure => installed}
package {'intel-ucode': ensure => installed}
package {'make':        ensure => installed}
package {'openssh':     ensure => installed}
package {'rsync':       ensure => installed}
package {'sudo':        ensure => installed}
package {'vim':         ensure => installed}

## Some localization
file {'/etc/vconsole.conf':
    ensure  => file,
    backup  => false,
    content => "KEYMAP=de-latin1-nodeadkeys\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
}

file {'/etc/papersize':
    ensure  => file,
    backup  => false,
    content => "a4\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
}

file {'/etc/localtime':
    ensure  => link,
    backup  => false,
    target  => '/usr/share/zoneinfo/Europe/Berlin',
}

file {'/etc/locale.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/base/etc/locale.conf",
}

file {'/etc/locale.gen':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/base/etc/locale.gen",
}
exec { '/usr/bin/locale-gen':
  subscribe => [
    File['/etc/locale.gen'],
  ],
  refreshonly => true,
}

## We'll use Network time
service {'systemd-timesyncd':
    ensure => 'running',
    enable => true,
}


## Sudo...
file {'/etc/sudoers':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    source  => "puppet:///modules/base/etc/sudoers",
}

group { 'sudo':
  ensure  => present,
  system  => true,
}
group { 'autologin':
  ensure  => present,
  system  => true,
}

## Config for the packagemanagers
file {'/etc/pacman.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/base/etc/pacman.conf",
}
file {'/etc/yaourtrc':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/base/etc/yaourtrc",
}
