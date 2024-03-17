#! /usr/bin/bash

echo "Setting up VPNKit for WSL2"
# wsl-vpnkit setup as a distro
wsl.exe -d wsl-vpnkit --cd /app cat /app/wsl-vpnkit.service | sudo tee /etc/systemd/system/wsl-vpnkit.service

# Enable and start the service
sudo systemctl enable wsl-vpnkit
sudo systemctl start wsl-vpnkit

systemctl status wsl-vpnkit
