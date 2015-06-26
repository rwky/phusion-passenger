#A modified version of phusion/passenger-customizable

This is a modified version of https://github.com/phusion/passenger-docker

There's nothing wrong with the phusion image (it's really good!). This contains some changes that
I personally find useful.

* Replace syslog-ng with rsyslog with tcp logging enabled
* Remove the syslog-forwarder to docker logs, I don't use docker logs if I can help it
* Use my own build of nodejs
* Add an exim service (it isn't installed you can install it with `apt-get -y install exim4-daemon-light`
* Sends nginx logs to syslog
* Runs logrotate in the build so that on first run of logrotate the logs are rotated, useful for containers using volumes that are restarted
* Generates ssh host keys even if ssh isn't running 
* Tweaks the nginx gzip and ssl configuration
* Exposes the nginx status stub on 0.0.0.0:/nginx_status
* Install security updates when built
* Configures Nginx to handle SSL using the Intermediate settings from https://mozilla.github.io/server-side-tls/ssl-config-generator/
* Includes a small python script to forward logs to syslog
* Uses auto for the number of nginx workers

## SSL Diffie-Hellman file
Nginx won't start without /etc/ssl/dh.pem being created, since you don't want this file to be public or the same as mine it's not generated.

To generate it add the following to your Dockerfile (do not make the image public!).

```
RUN openssl dhparam -out /etc/ssl/dh.pem 2048 && chmod 0400 /etc/ssl/dh.pem
```

## SSL HSTS

It's advisable if you run a HTTPS only site to add the HSTS header i.e.
```
# HSTS (ngx_http_headers_module is required) (15768000 seconds = 6 months)
add_header Strict-Transport-Security max-age=15768000;
```
[HSTS on Wikipedia](https://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security)

## Versioning

Releases are tagged with a version according to http://semver.org/
In the changelog I'll note which version of passenger-docker is the base

## pylogger

There is a small script in /usr/local/bin called pylogger which is a replacement for the standard logger tool
Logger has a problem where if the messages are long they're either truncated or split across multiple messages
pylogger logs regardless of the length of the message, see image/nginx.run for a usage example

