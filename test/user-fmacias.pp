user { 'fmacias':
  ensure           => 'present',
  comment          => ',,,',
  gid              => '1000',
  home             => '/home/fmacias',
  password         => '$6$EnFu/QrO$6q7sGGgyO91lgaiA0UjgSwGhqzXuELz5Asai4T9H7GL046H1pHDu27kNEb7X0FIjxi7ocbgq2cSlOMqyrOE4Y.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '1000',
}
