exim4
========

Samples
-------
```
include exim4

exim4::config { 'default':
    configtype => 'internet',
    other_hostnames => 'li924-974.members.linode.com; localhost',
    local_interfaces => '127.0.0.1; ::1',
    readhost => '',
    relay_domains => '',
    minimaldns => 'false',
    relay_nets => '',
    smarthost => '',
    use_split_config => 'false',
    hide_mailname => '',
    mailname_in_oh => 'true',
    localdelivery => 'maildir_home'
}
```

License
-------
MIT
