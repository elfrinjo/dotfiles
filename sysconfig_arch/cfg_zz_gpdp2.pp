############################################################################
###
##         Additional config GPD Pocket 2
#          This MUST be run as the last manifest as it overwrites some
#          standards
#

file {'/etc/vconsole.conf':
    ensure  => file,
    backup  => false,
    content => "KEYMAP=de-latin1-nodeadkeys\nFONT=latarcyrheb-sun32\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
}

file {'/etc/X11/xorg.conf.d/00-keyboard.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/gpdp2/etc/X11/xorg.conf.d/00-keyboard.conf",
}
file {'/etc/X11/xorg.conf.d/20-intel.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/gpdp2/etc/X11/xorg.conf.d/20-intel.conf",
}
file {'/etc/X11/xorg.conf.d/30-display.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/gpdp2/etc/X11/xorg.conf.d/30-display.conf",
}
file {'/etc/X11/xorg.conf.d/99-touchscreen.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/gpdp2/etc/X11/xorg.conf.d/99-touchscreen.conf",
}
file {'/etc/X11/Xresources':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/gpdp2/etc/X11/Xresources",
}

file {'/etc/modules-load.d/gpd-pocket-fan.conf':
    ensure  => file,
    backup  => false,
    content => "gpd-pocket-fan",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
}
file {'/etc/modprobe.d/gpd-pocket-fan.conf':
    ensure  => file,
    backup  => false,
    content => "options gpd-pocket-fan temp_limits=40000,40001,40002",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
}

