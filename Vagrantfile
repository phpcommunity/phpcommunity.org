Vagrant.configure("2") do |config|

    config.vm.box = "precise64"
    config.vm.network "private_network", ip: "192.168.42.106"

    config.vm.provider :virtualbox do |virtualbox|
        config.vm.box_url = "http://files.vagrantup.com/precise64.box"
        virtualbox.customize ["modifyvm", :id, "--name", "phpcommunity-web"]
        virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        virtualbox.customize ["modifyvm", :id, "--memory", "1024"]
    end

    config.vm.provision :puppet do |puppet|
        puppet.manifests_path = ".puppet/manifests"
        puppet.module_path = ".puppet/modules"
        puppet.manifest_file = "init.pp"
        puppet.options = ['--verbose']
    end

    config.ssh.forward_agent = true

end
