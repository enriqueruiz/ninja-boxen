class people::enriqueruiz { # GitHub username
     
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
