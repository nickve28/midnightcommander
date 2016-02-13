class midnightcommander::foldervalidation($dir = $midnightcommander::params::dir) {
  file {$dir:
    ensure => directory
  }
}
