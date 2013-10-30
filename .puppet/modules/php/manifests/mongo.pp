# Install Mongo extension
class php::mongo {

    # Dependency declarations
    Exec['Mongo Ext'] -> File['Mongo Config'] -> File['Mongo Symlink PHP CLI'] -> File['Mongo Symlink PHP Apache']

    exec { "Mongo Ext":
        command => "sudo /usr/bin/pecl install mongo",
    }

    file { "Mongo Config":
        ensure  => "present",
        path    => "/etc/php5/mods-available/mongo.ini",
        replace => "no",
        content => "extension=mongo.so\n",
    }

    file { "Mongo Symlink PHP CLI":
        ensure => "link",
        path   => "/etc/php5/cli/conf.d/30-mongo.ini",
        target => "/etc/php5/mods-available/mongo.ini",
    }

    file { "Mongo Symlink PHP Apache":
        ensure => "link",
        path   => "/etc/php5/apache2/conf.d/30-mongo.ini",
        target => "/etc/php5/mods-available/mongo.ini",
    }

}