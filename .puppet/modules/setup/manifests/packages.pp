# Ensure certain packages are installed
class setup::packages {
    
    exec { 'Update Apt for Packages':
        command => 'apt-get update',
    }

    package { [
            "build-essential",
            "vim",
            "git-core",
            "curl",
            "libcurl3-openssl-dev",
            "php5",
            "php5-common",
            "php5-dev",
            "php5-curl",
            "php-pear",
            "php5-xdebug",
            "php5-sqlite",
            "php5-gd",
            "php5-mcrypt",
            "php5-mhash",
            "php5-memcached",
            "php5-mysqlnd",
            "php5-json",
            "mysql-server",
            "mongodb-10gen",
            "nodejs",
            "memcached",
        ]:
        ensure  => "installed",
        require => Exec['Update Apt for Packages'],
    }

}
