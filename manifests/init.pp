class user_account(
  $user = {},
  $ssh_keygen = {},
){
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
