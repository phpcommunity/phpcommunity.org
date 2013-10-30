# PHP
class php {

    # Dependency declarations
    Class['composer'] -> Class['mongo']

    class {'composer':}
    class {'mongo':}

}