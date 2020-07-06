echo "Install Hostapd...."
sudo apt-get install hostapd
sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo apt install dnsmasq
sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent
sudo cp /etc/dhcpcd.conf dhcpcd.conf.orig
sudo cp dhcpcd.conf.default  /etc/dhcpcd.conf
sudo cp /etc/dnsmasq.conf dnsmasq.conf.orig
sudo cp dnsmasq.conf.default /etc/dnsmasq.conf
sudo rfkill unblock wlan
sudo cp  /etc/hostapd/hostapd.conf hostap.conf.orig
sudo cp  hostapd.conf.default /etc/hostapd/hostapd.conf
echo "Done Now Restarting"
sudo systemctl reboot
