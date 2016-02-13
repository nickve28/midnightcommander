class midnightcommander::params {
  if ($operatingsystem == 'ubuntu') {
    $dir = '/root/.config/mc'
    $file = 'mc.ext' 
  } else {
    $dir = '/root/.mc'
    $file = 'bindings'
  }
}
