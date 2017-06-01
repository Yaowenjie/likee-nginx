## Overall
This is the repo for nginx service of all likee.me sites.

## HTTPS Certificate
HTTPS Certificate was generated by [certbot](https://certbot.eff.org/) according to [letsencrypt.org](https://letsencrypt.org/).

`renewCert.sh` is for renewCert monthly by set crontab job, `crontab -e` and add content like below:
```
0 0 1 * * ~/xxx/likee-nignx/renew_cert.sh >/dev/null 2>&1
```


#### Reference
- https://certbot.eff.org/#centos6-nginx
- https://letsencrypt.org/getting-started/
