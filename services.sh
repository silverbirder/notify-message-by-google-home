#!/bin/bash

/usr/sbin/service dbus start
/usr/sbin/avahi-daemon --no-drop-root & node main.js