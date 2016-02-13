class midnightcommander::config($skin, $dir = $midnightcommander::params::dir) {
  file {"${dir}/ini":
    ensure => present,
    content => template('midnightcommander/ini.erb')
  }
}
