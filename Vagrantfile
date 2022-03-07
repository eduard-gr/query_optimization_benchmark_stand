
Vagrant.configure("2") do |config|
	#config.vm.box = "ubuntu/hirsute64"
	#config.vm.box_version = "20211028.0.0"

	config.vm.box = "ubuntu/focal64"
	config.vm.box_version = "20220302.0.0"

	config.vm.box_check_update      = true

	config.vm.hostname	="pgqs"
	config.vm.define	:"pgqs"

	config.vm.network 'private_network', ip: '192.168.56.4'

	# Configure VirtualBox params
	config.vm.provider "virtualbox" do |vb|
		vb.memory   = 4096
		vb.cpus     = 2
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
	#config.vm.provision "Reload services", type: "shell", run: "always" do |sh|
	#	sh.path = "provision/reload.sh"
	#	sh.keep_color = 1
	#end

	# Mount provision
	config.vm.synced_folder './provision', '/home/vagrant/provision',
		create: true,
		group: 'vagrant'
		#mount_options: ['dmode=775,fmode=664']
end

