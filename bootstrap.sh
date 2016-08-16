#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "[provisioning] Install Octave"
apt-get update
apt-get install -y octave gnuplot > /dev/null

echo "[provisioning] Prepare shell"
echo "cd /vagrant" >> /home/vagrant/.bashrc

echo "[provisioning] Cleanup"
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*
rm -rf /usr/src/linux-headers*
find /var/lib/apt -type f | xargs rm -f
rm -rf /var/cache/apk/*
apt-get clean -y
apt-get autoclean -y