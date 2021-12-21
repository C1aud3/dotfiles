# /bin/sh
export HTTP_PROXY_HOST=198.161.14.25
export HTTP_PROXY_PORT=8080
export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24,172.27.*,192.168.49.0/24

export HTTP_PROXY=http://$HTTP_PROXY_HOST:$HTTP_PROXY_PORT
export HTTPS_PROXY=$HTTP_PROXY

# gcloud config set proxy/type http
# gcloud config set proxy/address $HTTP_PROXY_HOST
# gcloud config set proxy/port $HTTP_PROXY_PORT

# git config --global http.proxy http://$HTTP_PROXY_HOST:$HTTP_PROXY_PORT
#
# you might need to create a link by manually executing 
# the next 2 lines if getting libreadline.8.0.dylib error
#   cd /usr/local/opt/readline/lib
#   ln -s libreadline.8.0.dylib libreadline.7.dylib
#
export GIT_SSH_COMMAND='ssh -o ProxyCommand="socat - PROXY:$HTTP_PROXY_HOST:%h:%p,proxyport=$HTTP_PROXY_PORT" -o hostname=ssh.github.com -o port=443'
