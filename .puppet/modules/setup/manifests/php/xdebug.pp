# Set up Xdebug
class setup::php::xdebug {

    exec { "Add xdebug.max_nesting_level to xdebug.ini":
        command => "sh -c \"echo 'xdebug.max_nesting_level=250' >> /etc/php5/mods-available/xdebug.ini\"",
        unless  => "grep -q max_nesting_level /etc/php5/mods-available/xdebug.ini",
    }

}