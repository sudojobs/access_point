echo "Install Hostapd...."
sudo apt-get remove hostapd
sudo apt remove dnsmasq
sudo DEBIAN_FRONTEND=noninteractive apt remove -y netfilter-persistent iptables-persistent
sudo mv dhcpcd.conf.orig  /etc/dhcpcd.conf
sudo mv dnsmasq.conf.orig /etc/dnsmasq.conf
#sudo mv  hostapd.conf.orig /etc/hostapd/hostapd.conf
echo "Done Now Restarting"
sudo systemctl reboot
