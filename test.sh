cat /usr/local/etc/nginx/servers/proxy
# brew services restart nginx
brew services reload nginx
./run_requests.sh 10
