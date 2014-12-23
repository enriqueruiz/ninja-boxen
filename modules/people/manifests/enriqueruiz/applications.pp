class people::enriqueruiz::applications {
  
  include iterm2::stable
  #include dropbox
  #include mysql
  #include onepassword
  #include virtualbox
  include vagrant
  #include vmware_fusion
  
  include bash::completion
  include chrome
  include firefox
  include textwrangler
  include parallels  
  include vmware_fusion

  #
  # Remove services we don't want
  #
  #service {"dev.nginx":
  #    ensure => "stopped",
  #}

  service {"dev.dnsmasq":
      ensure => "stopped",
  }
}

