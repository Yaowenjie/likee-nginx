#! /bin/sh
echo 'removing old config file'
rm -rf /etc/nginx/conf.d/*
echo 'copy nginx conf file'
mv ./nginx.conf /etc/nginx/nginx.conf
echo 'generating backend conf file'
mv ./conf/* /etc/nginx/conf.d/
service nginx restart
echo 'starting nginx'
exec "$@"
