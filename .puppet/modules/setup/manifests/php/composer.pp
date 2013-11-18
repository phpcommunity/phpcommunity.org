# Install Composer
class setup::php::composer {

    exec { "Download and install Composer":
        command => "curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin",
    }

    file { "/usr/local/bin/composer":
        ensure  => "link",
        path    => "/usr/local/bin/composer",
        target  => "/usr/local/bin/composer.phar",
        require => Exec['Download and install Composer'],
    }

}