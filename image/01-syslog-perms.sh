#!/bin/sh
# If /var/log is writable by another user logrotate will fail
/bin/chown root:root /var/log
/bin/chmod 0755 /var/log

