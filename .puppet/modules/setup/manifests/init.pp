# Setup
class setup {

    # Dependency declarations
    Class['apt'] -> Class['packages']

    class {'apt':}
    class {'packages':}

}