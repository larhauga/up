# Requires
# vagrant plugin install vagrant-vbguest
# vagrant plugin install vagrant-ansible-local

Vagrant.configure(2) do |config|
  #config.vm.box = "ubuntu/vivid64"
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
    #vb.customize ["modifyvm", :id, "--accelerate3d", "on" ]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional" ]
  end
  
  config.vm.synced_folder "data", "/data"
  
  # https://github.com/mitchellh/vagrant/issues/3230#issuecomment-54714726
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  
  # Installs ansible to enable provision (Will always run)
  config.vm.provision :shell, :path => "ansible-bootstrap.sh"
  
  # Runs ansible locally
  config.vm.provision :ansibleLocal, :playbook => "data/playbook.yml", :raw_arguments => "-i 'localhost,'"
end