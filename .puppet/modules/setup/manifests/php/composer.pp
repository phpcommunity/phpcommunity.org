# Install Composer
class setup::php::composer {

    exec { "Download and install Composer":
        command => "curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin",
    }

}