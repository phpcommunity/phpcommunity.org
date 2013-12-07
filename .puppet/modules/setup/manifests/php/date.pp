# Set up date extension
class setup::php::date {

    file { "Date Config":
        ensure  => "present",
        path    => "/etc/php5/mods-available/date.ini",
        replace => "no",
        content => "date.timezone = UTC\n",
    }

    file { "Date Symlink PHP CLI":
        ensure  => "link",
        path    => "/etc/php5/cli/conf.d/30-date.ini",
        target  => "/etc/php5/mods-available/date.ini",
        require => File['Date Config'],
    }

    file { "Date Symlink PHP Apache":
        ensure  => "link",
        path    => "/etc/php5/apache2/conf.d/30-date.ini",
        target  => "/etc/php5/mods-available/date.ini",
        require => File['Date Config'],
    }

}