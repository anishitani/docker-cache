rm /etc/apt/apt.conf.d/30proxy
sed -i '/use_proxy=/d' /etc/wgetrc
sed -i '/http_proxy=/d' /etc/wgetrc
