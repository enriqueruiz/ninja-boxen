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


  # Set the global default node (auto-installs it if it can)
  class { 'nodejs::global':
    version => '0.12'
  }

  # ensure a certain node version is used in a dir
  #nodejs::local { '/path/to/some/project':
  #  version => '0.12'
  #}

  # ensure a npm module is installed for a certain node version
  # note, you can't have duplicate resource names so you have to name like so
  $version = "0.12"
  npm_module { "bower for ${version}":
    module       => 'bower',
    version      => '~> 1.4.1',
    node_version => $version,
  }

  # ensure a module is installed for all node versions
  npm_module { 'bower for all nodes':
    module       => 'bower',
    version      => '~> 1.4.1',
    node_version => '*',
  }

  # install a node version
  nodejs::version { '0.12.2': }

  # Installing nodenv plugin
  #nodejs::nodenv::plugin { 'nodenv-vars':
  #  ensure => 'ee42cd9db3f3fca2a77862ae05a410947c33ba09',
  #  source  => 'OiNutter/nodenv-vars'
  #}
  
}

