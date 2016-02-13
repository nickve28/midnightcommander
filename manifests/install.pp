class midnightcommander::install {
  if ($operatingsystem == 'CentOS') {
    $provider = 'yum'
  } elsif ($operatingsystem == 'Ubuntu') {
    $provider = 'apt'
  } elsif ($operatingsystem == 'RedHat') {
    $provider = 'yum'
  } else {
    fail("OS ${operatingsystem} is not supported for package midnightcommander, expected CenOS, Ubuntu or RedHat")
  }
  package {'mc':
    ensure => present,
    provider => $provider
  }
}
