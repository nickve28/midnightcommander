class midnightcommander($skin= "default") {
  $valid_os = ["RedHat", "Ubuntu", "CentOS"]

  unless ($operatingsystem in $valid_os) {
    fail("Operatingsystem not supported")
  }
  anchor { 'midnightcommander::begin':  }
    -> class {'midnightcommander::params': }
    -> class {'midnightcommander::install': }
    -> class {'midnightcommander::foldervalidation': }
    -> class {'midnightcommander::config': skin => $skin } 
  
}
