#!/bin/bash
service mysql start
apache2ctl -S
apachectl -D FOREGROUND