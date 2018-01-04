#!/usr/bin/env bash
request() {
  # curl -s -o /dev/null -I  -w "%{http_code}" 'http://localhost:4040' -H 'token=Bearer%;' --compressed
  curl -s -o /dev/null -I  -w "%{http_code}\n" 'http://localhost:5000' -H 'token=Bearer%;' --compressed
  # curl -w "%{http_code}" 'http://localhost:5000' -H 'token=Bearer%;' --compressed
}

requests () {
  for i in `seq 1 $1`
    do
      request $i &
    done
  wait
}
time requests $1
