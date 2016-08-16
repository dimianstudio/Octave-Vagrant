# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'minimal/trusty64'

  config.vm.provider :virtualbox do |vb, override|
    vb.name = 'Octave'
    vb.memory = 256
    vb.cpus = 2
  end

  config.vm.provision 'shell', path: 'bootstrap.sh'
end
