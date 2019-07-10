# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/centos-7.4"

  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 1024] # RAM allocated to each VM
  end

  config.vm.provision "shell", path: "shell/bootstrap.sh", run: "once" # always
  config.vm.provision "shell", path: "shell/hadoop/install.sh", run: "once" # always

  config.vm.define :node01 do |node01|
    # node01.vm.provision "shell", inline: "echo hello", run: "always"
    node01.vm.hostname = "node01"
    node01.vm.network :private_network, ip: "192.168.74.101"
    node01.vm.provision "shell", path: "shell/zookeeper/install.sh", run: "once"
    node01.vm.provision "shell", inline: "echo 1 > /opt/zookeeper/myid", run: "once"
  end

  config.vm.define :node02 do |node02|
    node02.vm.hostname = "node02"
    node02.vm.network :private_network, ip: "192.168.74.102"
    node02.vm.provision "shell", path: "shell/zookeeper/install.sh", run: "once"
    node02.vm.provision "shell", inline: "echo 2 > /opt/zookeeper/myid", run: "once"
  end

  config.vm.define :node03 do |node03|
    node03.vm.hostname = "node03"
    node03.vm.network :private_network, ip: "192.168.74.103"
    node03.vm.provision "shell", path: "shell/zookeeper/install.sh", run: "once"
    node03.vm.provision "shell", inline: "echo 3 > /opt/zookeeper/myid", run: "once"
  end

  config.vm.define :node04 do |node04|
    node04.vm.hostname = "node04"
    node04.vm.network :private_network, ip: "192.168.74.104"
 #   node04.vm.provision :shell, :path => "shell/name-node.sh"
  end

  config.vm.define :node05 do |node05|
    node05.vm.hostname = "node05"
    node05.vm.network :private_network, ip: "192.168.74.105"
 #   node05.vm.provision :shell, :path => "shell/name-node.sh"
  end

  config.vm.define :node06 do |node06|
    node06.vm.hostname = "node06"
    node06.vm.network :private_network, ip: "192.168.74.106"
  end

  config.vm.define :node07 do |node07|
    node07.vm.hostname = "node07"
    node07.vm.network :private_network, ip: "192.168.74.107"
  end

  config.vm.define :node08 do |node08|
    node08.vm.hostname = "node08"
    node08.vm.network :private_network, ip: "192.168.74.108"
  end

  config.vm.define :node09 do |node09|
    node09.vm.hostname = "node09"
    node09.vm.network :private_network, ip: "192.168.74.109"
  end

  config.vm.define :node10 do |node10|
    node10.vm.hostname = "node10"
    node10.vm.network :private_network, ip: "192.168.74.110"
  end


end
