#!/usr/bin/env bash
request() {
  curl -s -o /dev/null -I  -w "%{http_code}\n" 'http://localhost:4040/api' \
  -H 'Cookie: token=Bearer'$1 --compressed
}

requests () {
  for i in `seq 1 5`
    do
      request $1 &
    done
}
requests 1
requests 1
wait
