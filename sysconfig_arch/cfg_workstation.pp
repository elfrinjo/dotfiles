############################################################################
###
##         Additional config for Workstations
#
#

## Disable ctrl-alt-del
service {'ctrl-alt-del.target':
    enable => 'mask',
}
## Lots of Packages...
package {'acpi':                         ensure => installed}
package {'alsa-utils':                   ensure => installed}
package {'alacritty':                    ensure => installed}
package {'arandr':                       ensure => installed}
package {'aspell':                       ensure => installed}
package {'aspell-de':                    ensure => installed}
package {'aspell-en':                    ensure => installed}
package {'autoconf':                     ensure => installed}
package {'automake':                     ensure => installed}
package {'bash':                         ensure => installed}
package {'bash-completion':              ensure => installed}
package {'binutils':                     ensure => installed}
package {'bison':                        ensure => installed}
package {'blueman':                      ensure => installed}
package {'bluez-utils':                  ensure => installed}
package {'btrfs-progs':                  ensure => installed}
package {'bzip2':                        ensure => installed}
package {'cool-retro-term':              ensure => installed}
package {'coreutils':                    ensure => installed}
package {'cryptsetup':                   ensure => installed}
package {'ctags':                        ensure => installed}
package {'curl':                         ensure => installed}
package {'device-mapper':                ensure => installed}
package {'dhcpcd':                       ensure => installed}
package {'dialog':                       ensure => installed}
package {'diffutils':                    ensure => installed}
package {'dmenu':                        ensure => installed}
package {'dos2unix':                     ensure => installed}
package {'dosfstools':                   ensure => installed}
package {'dunst':                        ensure => installed}
package {'e2fsprogs':                    ensure => installed}
package {'emacs':                        ensure => installed}
package {'expac':                        ensure => installed}
package {'fakeroot':                     ensure => installed}
package {'feh':                          ensure => installed}
package {'file':                         ensure => installed}
package {'filesystem':                   ensure => installed}
package {'findutils':                    ensure => installed}
package {'firefox':                      ensure => installed}
package {'firefox-i18n-de':              ensure => installed}
package {'flex':                         ensure => installed}
package {'gawk':                         ensure => installed}
package {'gcc':                          ensure => installed}
package {'gcc-libs':                     ensure => installed}
package {'gettext':                      ensure => installed}
package {'glibc':                        ensure => installed}
package {'gnu-netcat':                   ensure => installed}
package {'gnome-backgrounds':            ensure => installed}
package {'grep':                         ensure => installed}
package {'groff':                        ensure => installed}
package {'gzip':                         ensure => installed}
package {'hdparm':                       ensure => installed}
package {'i3-wm':                        ensure => installed}
package {'i3lock':                       ensure => installed}
package {'i3status':                     ensure => installed}
package {'imagemagick':                  ensure => installed}
package {'inetutils':                    ensure => installed}
package {'iproute2':                     ensure => installed}
package {'iputils':                      ensure => installed}
package {'ispell':                       ensure => installed}
package {'iw':                           ensure => installed}
package {'jfsutils':                     ensure => installed}
package {'keepassxc':                    ensure => installed}
package {'less':                         ensure => installed}
package {'libreoffice-fresh':            ensure => installed}
package {'libtool':                      ensure => installed}
package {'licenses':                     ensure => installed}
package {'lightdm':                      ensure => installed}
package {'lightdm-gtk-greeter':          ensure => installed}
package {'lightdm-gtk-greeter-settings': ensure => installed}
package {'linux':                        ensure => installed}
package {'linux-headers':                ensure => installed}
package {'lm_sensors':                   ensure => installed}
package {'logrotate':                    ensure => installed}
package {'lshw':                         ensure => installed}
package {'lvm2':                         ensure => installed}
package {'m4':                           ensure => installed}
package {'man-db':                       ensure => installed}
package {'man-pages':                    ensure => installed}
package {'mc':                           ensure => installed}
package {'mdadm':                        ensure => installed}
package {'mercurial':                    ensure => installed}
package {'mplayer':                      ensure => installed}
package {'nano':                         ensure => installed}
package {'network-manager-applet':       ensure => installed}
package {'networkmanager':               ensure => installed}
package {'nmap':                         ensure => installed}
package {'nmon':                         ensure => installed}
package {'nomacs':                       ensure => installed}
package {'p7zip':                        ensure => installed}
package {'pacman':                       ensure => installed}
package {'parcellite':                   ensure => installed}
package {'patch':                        ensure => installed}
package {'pciutils':                     ensure => installed}
package {'pcmanfm-gtk3':                 ensure => installed}
package {'perl':                         ensure => installed}
package {'perl-date-manip':              ensure => installed}
package {'perl-finance-quote':           ensure => installed}
package {'procps-ng':                    ensure => installed}
package {'psmisc':                       ensure => installed}
package {'qrencode':                     ensure => installed}
package {'rng-tools':                    ensure => installed}
package {'ruby':                         ensure => installed}
package {'rxvt-unicode':                 ensure => installed}
package {'screenfetch':                  ensure => installed}
package {'scrot':                        ensure => installed}
package {'seahorse':                     ensure => installed}
package {'sed':                          ensure => installed}
package {'shadow':                       ensure => installed}
package {'sharutils':                    ensure => installed}
package {'strace':                       ensure => installed}
package {'subversion':                   ensure => installed}
package {'sysfsutils':                   ensure => installed}
package {'systemd-sysvcompat':           ensure => installed}
package {'tar':                          ensure => installed}
package {'tcl':                          ensure => installed}
package {'texinfo':                      ensure => installed}
package {'texlive-bibtexextra':          ensure => installed}
package {'texlive-core':                 ensure => installed}
package {'texlive-fontsextra':           ensure => installed}
package {'texlive-formatsextra':         ensure => installed}
package {'texlive-games':                ensure => installed}
package {'texlive-humanities':           ensure => installed}
package {'texlive-latexextra':           ensure => installed}
package {'texlive-music':                ensure => installed}
package {'texlive-pictures':             ensure => installed}
package {'texlive-pstricks':             ensure => installed}
package {'texlive-publishers':           ensure => installed}
package {'texlive-science':              ensure => installed}
package {'tk':                           ensure => installed}
package {'tree':                         ensure => installed}
package {'ttf-inconsolata':              ensure => installed}
package {'unzip':                        ensure => installed}
package {'usbutils':                     ensure => installed}
package {'util-linux':                   ensure => installed}
package {'w3m':                          ensure => installed}
package {'wget':                         ensure => installed}
package {'which':                        ensure => installed}
package {'wpa_supplicant':               ensure => installed}
package {'wxmaxima':                     ensure => installed}
package {'xautolock':                    ensure => installed}
package {'xclip':                        ensure => installed}
package {'xdot':                         ensure => installed}
package {'xf86-input-synaptics':         ensure => installed}
package {'xf86-video-intel':             ensure => installed}
package {'xfsprogs':                     ensure => installed}
package {'xreader':                      ensure => installed}
package {'xorg-apps':                    ensure => installed}
package {'xorg-xclipboard':              ensure => installed} # Important for Citrix
package {'xorg-server':                  ensure => installed}
package {'xterm':                        ensure => installed}
package {'zathura':                     ensure => installed}
package {'zathura-pdf-mupdf':           ensure => installed}

## Audio-Zeugs
package {'pulseaudio':                   ensure => installed}
package {'pulseaudio-alsa':              ensure => installed}
package {'pulseaudio-bluetooth':         ensure => installed}
package {'pulsemixer':                   ensure => installed}
package {'pavucontrol':                  ensure => installed}
package {'pasystray':                    ensure => installed}
package {'paprefs':                      ensure => installed}

## Logon and Greeting
file {'/etc/systemd/logind.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/systemd/logind.conf",
}

file {'/etc/lightdm/lightdm-gtk-greeter.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/lightdm/lightdm-gtk-greeter.conf",
}

file {'/etc/lightdm/lightdm.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/lightdm/lightdm.conf",
}

file {'/etc/pam.d/login':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/pam.d/login",
}

file {'/etc/X11/xorg.conf.d/00-keyboard.conf':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/X11/xorg.conf.d/00-keyboard.conf",
}

file {'/etc/pam.d/passwd':
    ensure  => file,
    backup  => false,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/desktop/etc/pam.d/passwd",
}

service {'lightdm.service':
    ensure => 'running',
    enable => true,
}

## Network Manager
service {'netctl.service':
    ensure => 'stopped',
    enable => false,
}

service {'NetworkManager.service':
    ensure => 'running',
    enable => true,
}

