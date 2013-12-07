# Set up Apache modules
class setup::apache {

    file { "rewrite.load":
        ensure  => "link",
        path    => "/etc/apache2/mods-enabled/rewrite.load",
        target  => "/etc/apache2/mods-available/rewrite.load",
    }

}