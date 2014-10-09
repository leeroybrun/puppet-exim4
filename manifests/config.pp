define exim4::config (
    $configtype = 'internet',
    $other_hostnames = 'UNSET',
    $local_interfaces = '127.0.0.1; ::1',
    $readhost = '',
    $relay_domains = '',
    $minimaldns = 'false',
    $relay_nets = '',
    $smarthost = '',
    $use_split_config = 'false',
    $hide_mailname = '',
    $mailname_in_oh = 'true',
    $localdelivery = 'maildir_home'
) {

    if $other_hostnames == 'UNSET' {
        $other_hostnames = "$fqdn; localhost"
    }

    file { '/etc/exim4/update-exim4.conf.conf':
        owner     => 'root',
        group     => 'root',
        mode      => '0440',
        content   => template('exim4/update-exim4.conf.conf'),
        require   => Package['exim4'],
        subscribe => Exec['update-exim4.conf'],
    }

    exec { "update-exim4.conf":
        command => "update-exim4.conf"
    }

}
