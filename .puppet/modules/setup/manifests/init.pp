# Setup
class setup {

    # Dependency declarations
    Class['apt'] -> Class['packages']
    Class['packages'] -> Class['apache']
    Class['packages'] -> Class['php::date']
    Class['packages'] -> Class['php::composer']
    Class['packages'] -> Class['php::mongo']
    Class['apache'] -> Exec['Restart Apache']

    class {'apt':}
    class {'packages':}
    class {'apache':}
    class {'php::date':}
    class {'php::composer':}
    class {'php::mongo':}

    exec {"Restart Apache":
        command => "/etc/init.d/apache2 restart",
    }

}