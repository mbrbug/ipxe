#!/bin/bash

cp $1 $1.bak
sed -i 's/set server/#set server/' $1
sed -i 's/\/pxe\/images\///' $1
sed -i 's/http:\/\/${server_ip}${nfs_path}/${boot-url-http}\/${nfs_path}/' $1
