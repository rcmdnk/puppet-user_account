class user_account(
  $group = {},
  $user = {},
  $ssh_keygen = {},
){
  $group.each |String $key, Hash $val| {
    accounts::group {$key:
      * => $val,
    }
  }
  $user.each |String $key, Hash $val| {
    accounts::user {$key:
      * => $val,
    }
  }
  $ssh_keygen.each |String $key, Hash $val| {
    ssh_keygen {$key:
      * => $val,
    }
  }
}
