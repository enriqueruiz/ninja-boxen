class people::enriqueruiz { # GitHub username

    include people::enriqueruiz::applications
     
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

