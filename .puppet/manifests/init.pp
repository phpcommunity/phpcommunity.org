Exec {
    path => [
        "/usr/local/sbin",
        "/usr/local/bin",
        "/usr/sbin",
        "/usr/bin",
        "/sbin",
        "/bin",
        "/opt/vagrant_ruby/bin",
    ],
}

node default {

    include setup
    include mongodb
    include php

    Class['setup'] -> Class['mongodb'] -> Class['php']

}
