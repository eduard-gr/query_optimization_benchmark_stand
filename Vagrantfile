
Vagrant.configure("2") do |config|


	config.vm.box = "centos/8"
	config.vm.box_version = "2011.0"
	config.vm.box_check_update	= true

	config.vm.hostname	="pg13bench"
	config.vm.define	:"pg13bench"

	config.vm.network 'private_network', ip: '192.168.56.4'

	# Configure VirtualBox params
	config.vm.provider "virtualbox" do |vb|
		vb.memory   = 6156
		vb.cpus     = 4
		vb.gui      = false
		vb.name	    = "Query optimization benchmark stand"
		
	end
	

	# Provision - Install components
	config.vm.provision "Install components", type: "shell" do |sh|
		sh.path = "provision/bootstrap.sh"
		sh.args = []
		sh.keep_color = 1
	end

	# Provision - Reload services on startup
	 config.vm.provision "Reload services", type: "shell", run: "always" do |sh|
	 	sh.path = "provision/reload.sh"
	 	sh.keep_color = 1
	 end

	# Mount provision
	config.vm.synced_folder './provision', '/home/vagrant/provision',
		create: true,
		group: 'vagrant'
		#mount_options: ['dmode=775,fmode=664']
end

