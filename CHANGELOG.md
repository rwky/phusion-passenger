## 11.1.0

* Updated to passenger-customizable:0.9.29
* Updated to passenger 5.2.1

## 11.0.0

* Updated to passenger-customizable:0.9.28
* Updated node to 8.x

## 10.4.0

* Updated packages
* Updated passenger to 5.2.0

## 10.3.0

* Updated packages
* Updated passenger to 5.1.12

## 10.2.1

* Updated packages

## 10.2.0

* Updated to passenger-docker 0.9.26

## 10.1.1

* Fixed logrotate not running

## 10.1.0

* Add gzip compression of svg by default

## 10.0.0

* Updated to passenger 5.1.7 which includes updating nginx to 1.12.1

## 9.0.0

* Updated to passenger-docker 0.9.24
* Added missing tzdata which went missing in 8.0.0

## 8.0.1

* Updated phusion-passenger to 5.1.7

## 8.0.0

* Updated phusion-passenger to 5.1.6
* Updated to passenger-docker 0.9.22 (includes base image 0.9.22)

## 7.2.0

* Updated phusion-passenger to 5.1.5

### 7.1.3

* Updated packages
* Updated phusion-passenger to 5.1.4

### 7.1.2 (2017-05-03)

* Updated packages
* Updated phusion-passenger to 5.1.3

### 7.1.1 (2017-02-01)

* Updated packages (OpenSSL USN-3181-1)
* Updated phusion-passenger to 5.1.2

### 7.1.0 (2017-01-03)

* Updated packages
* Updated phusion-passenger to 5.1.1

### 7.0.4 (2016-11-29)

* Updated packages

### 7.0.3 (2016-10-11)

* Updated packages fixing OpenSSL regression

### 7.0.2 (2016-09-23)

* Updated packages fixes OpenSSL USN-3087-1

### 7.0.1 (2016-09-12)

* Updated packages fixing various USNs

### 7.0.0 (2016-08-02)

* Updated to passenger-docker 0.9.19

### 6.2.0

* Updated phusion-passenger to 5.0.29 

### 6.1.0

* Updated packages

### 6.0.0

* Removed ssh server (use docker exec instead)
* Removed dhcp client
* Purged syslog-ng
* Clean up final layer

### 5.2.0

* Updated to phusion-passenger 5.0.28 which includes nginx 1.10

### 5.1.5

* Updated phusion-passenger to 5.0.27
* Security updates to git libpam libpcre3 tzdata

### 5.1.4

* Updated phusion-passenger to 5.0.26
* Updated openssl USN-2914-1
* Updated libperl USN-2916-1

## 5.1.3

* Updated phusion passenger to 5.0.25
* Updated libc USN-2900-1

## 5.1.2 (2016-02-02)

* Updated phusion passenger to 5.0.24

## 5.1.1 (2016-02-01)

* Updated openssl
* Updated openssh

## 5.1.0 (2016-01-20)

* Changed SSL params to not use DHE suites so ssl_dhparam is no longer required.
* Updated libc
* Update libxml2
* Updated openssh

## 5.0.1 (2016-01-13)

* Updated openssl
* Updated gnutls
* Update libpng

## 5.0.0 (2015-12-19) Based off 0.9.18

* Updated default node to 4.x LTS branch

## 4.0.0 (2015-12-16) Based off 0.9.18

* Updated base image to 0.9.18
* Updated git
* Update libxml

## 3.0.9 (2015-12-08) Based off 0.9.17

* Updated to passenger 5.0.22

## 3.0.8 (2015-12-07) Based off 0.9.17

* Updated openssl USN-2830-1

## 3.0.7 (2015-10-26) Based off 0.9.17

* Updated passenger to 5.0.21
* Switched to nodesource for nodejs

## 3.0.6 (2015-09-12) Based off 0.9.17

* Updated passenger to 5.0.18

## 3.0.5 (2015-09-04) Based off 0.9.17

* Updated passenger to 5.0.16

## 3.0.4 (2015-08-19) Based off 0.9.17

* Updated openssh USN-2710-2
* Fixed crons not running on overlayfs by running touch on all cron files

## 3.0.3 (2015-08-15) Based off 0.9.17

* Updated openssh USN-2710-1

## 3.0.2 (2015-08-10) Based off 0.9.17

* Fixed logrotate not rotating /var/log/syslog

## 3.0.1 (2015-08-03) Based off 0.9.16

* Updated passenger to 5.0.15
* Updated libsqlite3 USN-2698-1
* Updated libpcre USN-2694-1

## 3.0.0 (2015-07-15) Based off 0.9.16

* Updated phusion/passenger-docker to 0.9.16

## 2.0.1 (2015-07-07) Based off 0.9.15

* Updated passenger to 5.0.13

## 2.0.0 (2015-06-26) Based off 0.9.15

* Updated nginx to 1.8.0
* Updated passenger to 5.0.11

## 1.0.5 (2015-06-25) Based off 0.9.15

* Updated packages to patch Python and Patch USN-2653-1, USN-2651-1

## 1.0.4 (2015-06-13) Based off 0.9.15

* Updated packages to patch OpenSSL USN-2639-1

## 1.0.3 (2015-06-02) Based off 0.9.15

* Updated packages to patch OpenSSL USN-2624-1

## 1.0.2 (2015-03-22) Based off 0.9.15

* Updated packages to patch GnuTLS USN-2540-1

## 1.0.1 (2015-03-20) Based off 0.9.15

* Updated packages to patch OpenSSL USN-2537-1

## 1.0.0 (2015-03-11) Based off 0.9.15

* Initial release
