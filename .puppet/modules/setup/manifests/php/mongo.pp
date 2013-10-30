# Install Mongo extension
class setup::php::mongo {

    exec { "pecl install mongo": }

    file { "Mongo Config":
        ensure  => "present",
        path    => "/etc/php5/mods-available/mongo.ini",
        replace => "no",
        content => "extension=mongo.so\n",
        require => Exec['pecl install mongo'],
    }

    file { "Mongo Symlink PHP CLI":
        ensure  => "link",
        path    => "/etc/php5/cli/conf.d/30-mongo.ini",
        target  => "/etc/php5/mods-available/mongo.ini",
        require => File['Mongo Config'],
    }

    file { "Mongo Symlink PHP Apache":
        ensure  => "link",
        path    => "/etc/php5/apache2/conf.d/30-mongo.ini",
        target  => "/etc/php5/mods-available/mongo.ini",
        require => File['Mongo Config'],
    }

}