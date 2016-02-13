define midnightcommander::colorscheme ($skin_file, $name) {
  file { '/usr/share/mc':
    ensure => directory,
  }

  file { '/usr/share/mc/skins':
    ensure => directory,
  }

  file { "/usr/share/mc/skins/${name}":
    ensure => present,
    content => file($skin_file)
  }
}
  

