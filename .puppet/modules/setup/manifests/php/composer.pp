# Install Composer
class setup::php::composer {

    exec { "Download Composer":
        command => "curl -sS https://getcomposer.org/installer | php",
    }

    exec { "Install Composer":
        command => "mv composer.phar /usr/local/bin/composer",
        require => Exec['Install Composer'],
    }

}