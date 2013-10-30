# Set up APT
class setup::apt {
    
    # Dependency declarations
    Exec['Update Apt'] -> Exec['Upgrade Apt'] -> Exec['Install Python Software Properties'] -> Exec['Add PPA']

    exec { "Update Apt":
        command => "apt-get -q -y --force-yes update",
    }

    exec { "Upgrade Apt":
        command => "apt-get -q -y --force-yes upgrade",
    }

    exec { "Install Python Software Properties":
        command => "apt-get -q -y --force-yes install python-software-properties",
    }

    exec { "Add PPA":
        command => "add-apt-repository ppa:ondrej/php5 && apt-get update",
    }
}