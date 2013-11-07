# Set up Apache modules
class setup::apache {

    file { "proxy.conf":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/proxy.conf",
        target  => "/etc/apache2/mods-enabled/proxy.conf",
    }

    file { "proxy.load":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/proxy.load",
        target  => "/etc/apache2/mods-enabled/proxy.load",
    }

    file { "proxy.load":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/proxy_http.load",
        target  => "/etc/apache2/mods-enabled/proxy_http.load",
    }

    file { "userdir.conf":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/userdir.conf",
        target  => "/etc/apache2/mods-enabled/userdir.conf",
    }

    file { "userdir.load":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/userdir.load",
        target  => "/etc/apache2/mods-enabled/userdir.load",
    }

    file { "rewrite.load":
        ensure  => "link",
        path    => "/etc/apache2/mods-available/rewrite.load",
        target  => "/etc/apache2/mods-enabled/rewrite.load",
    }

}