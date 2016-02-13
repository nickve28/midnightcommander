::midnightcommander::colorscheme {'ajnasz-blue':
  skin_file => "/root/ajnasz-blue.ini",
  name => "ajnasz-blue.ini"
}->
class { 'midnightcommander': 
  skin => 'ajnasz-blue.ini',
}->
class {'midnightcommander::associations':
  user_associations => "shell/.clj
        Open=%var{EDITOR:vi} %f"
}

