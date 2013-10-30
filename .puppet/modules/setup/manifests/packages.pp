# Ensure certain packages are installed
class setup::packages {
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
        ]:
        ensure => "installed",
    }
}