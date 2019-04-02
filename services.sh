#!/bin/bash

/usr/sbin/service dbus start
/usr/sbin/service avahi-daemon start
node main.js