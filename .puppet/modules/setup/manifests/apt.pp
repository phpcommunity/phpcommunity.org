# Set up APT
class setup::apt {

    exec { "apt-get update": }

    exec { "apt-get install python-software-properties":
        command => "apt-get -q -y --force-yes install python-software-properties python g++ make software-properties-common",
        require => Exec['apt-get update'],
    }

    exec { "add-apt-repository -y ppa:ondrej/php5":
        require => Exec['apt-get install python-software-properties'],
    }

    exec { "add-apt-repository -y ppa:chris-lea/node.js":
        require => Exec['apt-get install python-software-properties'],
    }

    exec { "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10": }

    file { "MongoDB Source File":
        ensure  => "present",
        path    => "/etc/apt/sources.list.d/mongodb.list",
        replace => "no",
        content => "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen\n",
    }
}