#!/bin/bash

gcc -o mini-server mini-server.c -lfcgi
service nginx start
nginx -s reload
spawn-fcgi -p 8080 ./mini-server
sleep 100