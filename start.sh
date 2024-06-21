#! /bin/bash

service cron start &
mongod --bind_ip_all