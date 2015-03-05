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
  #include github_for_mac

  # install any arbitrary nodejs version
  #nodejs::version { 'v0.12.0': }

  # set the global nodejs version
  #class { 'nodejs::global':
  #version => 'v0.10.0'
  #}

  # install some npm modules
  #nodejs::module { 'grunt-cli':
  #node_version => 'v0.12.0'
  #}

  #nodejs::module { 'bower':
  #node_version => 'v0.12.0'
  #}

  #nodejs::module { 'yo':
  #node_version => 'v0.12.0'
  #}
  
}

