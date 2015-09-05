echo "HEAD /" | nc 172.17.42.1 8000 | grep squid-deb-proxy && \
echo 'Acquire::http::Proxy "http://172.17.42.1:8000";' > /etc/apt/apt.conf.d/30proxy && \
echo use_proxy=on >> /etc/wgetrc && \
echo http_proxy="http://172.17.42.1:8000" >> /etc/wgetrc && \
export HTTP_PROXY="http://172.17.42.1:8000" || \
echo "Not using squid-deb-cache"

