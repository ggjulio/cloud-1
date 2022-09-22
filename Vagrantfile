SERVER_IP="192.168.56.10"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64" 

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 4096
  end

  config.vm.network "private_network", ip: SERVER_IP

  config.vm.provision "shell", name: "Setting up badass", privileged: true,  inline: <<-SHELL
    set -e
    apt update
    apt-get install -y emacs

    echo -e "\nPasswordAuthentication yes" >> /etc/ssh/ssh_config
    systemctl restart sshd

  SHELL


end
