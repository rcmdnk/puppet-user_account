# puppet-user_account
Puppet module to manage user account

## Usage

This is wrapper module for
[accounts](https://forge.puppet.com/puppetlabs/accounts)
and
[ssh_keygen](https://forge.puppet.com/puppet/ssh_keygen).

`user_account::user` can be used similar to `accounts::user`
and
`user_account::ssh_keygen` can be used similar to `ssh_keygen`.

Example:

```puppet
include cron

user_account::user { 'bob':
  uid      => '4001',
  gid      => '4001',
  group    => 'staff',
  shell    => '/bin/bash',
  password => '!!',
  locked   => false,
}

user_account::ssh_keygen { 'john':
  home => '/var/home'
}
```

Hiera example:

```puppet
---
classes:
  - user_account

user_account::user:
  'bob':
    uid: '4001'
    gid: '4001'
    group: 'staff'
    shell: '/bin/bash'
    password: '!!'
    locked: false
user_account::ssh_keygen:
  'john':
    home: '/var/home'
```
