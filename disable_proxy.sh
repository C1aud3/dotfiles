# /bin/sh
unset HTTP_PROXY_HOST
unset HTTP_PROXY_PORT
unset NO_PROXY
unset HTTP_PROXY
unset HTTPS_PROXY
unset GIT_SSH_COMMAND
# gcloud config unset proxy/type 
# gcloud config unset proxy/address 
# gcloud config unset proxy/port

echo $GIT_SSH_COMMAND
echo 'corporate proxy disabled'
