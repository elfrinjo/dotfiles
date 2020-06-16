############################################################################
###
##         Additional config for Laptops
#
#

package {'tlp':                         ensure => installed}

service {'tlp':
    ensure => 'running',
    enable => true,
}

file {'/etc/default/tlp':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/default/tlp",
}