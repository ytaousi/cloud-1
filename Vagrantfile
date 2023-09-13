Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.vm.define "ytaousiS" do |master|
        master.vm.hostname = "ytaousi.42.fr"
        master.vm.network "private_network", ip: "192.168.56.110"
        master.vm.provider "virtualbox" do |v|
            v.name = "ytaousiS"
            v.customize ["modifyvm", :id, "--memory", "1024"]
            v.customize ["modifyvm", :id, "--cpus", "1"]
            v.customize ["modifyvm", :id, "--name", "ytaousiS"]
        end
        
        master.vm.provision "ansible" do |ansible|
            ansible.playbook = "./playbook.yml"
        end
    end
end