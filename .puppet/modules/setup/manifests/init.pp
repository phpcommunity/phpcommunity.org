# Setup
class setup {

    # Dependency declarations
    Class['apt'] -> Class['packages']
    Class['packages'] -> Class['php::composer']
    Class['packages'] -> Class['php::mongo']

    class {'apt':}
    class {'packages':}
    class {'php::composer':}
    class {'php::mongo':}

}