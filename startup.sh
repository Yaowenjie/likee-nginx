#! /bin/sh
echo 'removing old config file'
rm -rf /etc/nginx/conf.d/*
echo 'copy nginx conf file'
cp -f ./nginx.conf /etc/nginx/nginx.conf
echo 'generating backend conf file'
cp ./conf/* /etc/nginx/conf.d/
service nginx restart
echo 'starting nginx'
exec "$@"
