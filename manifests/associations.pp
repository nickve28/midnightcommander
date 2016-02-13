class midnightcommander::associations($user_associations, $dir = $midnightcommander::params::dir, $file = $midnightcommander::params::file) {
  file {"${dir}/${file}":
    ensure => present,
    content => template("midnightcommander/mc.ext.erb"),
  }
}
