# Install Composer
class php::composer {
    
    # Dependency declarations
    Exec['Download Composer'] -> Exec['Install Composer']

    exec { "Download Composer":
        command => "curl -sS https://getcomposer.org/installer | php",
    }

    exec { "Install Composer":
        command => "mv composer.phar /usr/local/bin/composer",
    }

}