# MongoDB
class mongodb {

    # Dependency declarations
    Exec['Add MongoDB Keyserver'] -> File['MongoDB Source File'] -> Exec['Update Apt for MongoDB'] -> Exec['Install MongoDB']

    exec { "Add MongoDB Keyserver":
        command => "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10",
    }

    file { "MongoDB Source File":
        ensure  => "present",
        path    => "/etc/apt/sources.list.d/mongodb.list",
        replace => "no",
        content => "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen\n",
    }

    exec { "Update Apt for MongoDB":
        command => "apt-get update",
    }

    exec { "Install MongoDB":
        command => "apt-get install mongodb-10gen",
    }

}