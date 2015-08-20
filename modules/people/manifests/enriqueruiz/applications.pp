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
  
  # This Boxen module is now deprecated. 
  include github_for_mac
  
  # The advised method for installing applications with Boxen is to now use homebrew-cask.
  # Add the following to your manifest to install Github using brewcask:
  #package { 'github-desktop': provider => 'brewcask' }
  
  # Install the default version of both the JDK and JRE
  include java
  
  # Eclipse for Java Developers
  include eclipse::java

  #class { 'eclipse::java':
  #  version => 'SR2'
  #}

  # Eclipse for JEE Developers
  #include eclipse::jee

  #class { 'eclipse::jee':
  #  version => 'SR2'
  #}

  # Eclipse for Grails Developers
  include eclipse::ggts

  # Eclipse for C++ Developers
  #include eclipse::cpp  


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

