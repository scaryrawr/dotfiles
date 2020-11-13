#!/usr/bin/env bash

sudo echo "session    optional     pam_gnome_keyring.so auto_start" >> /etc/pam.d/login
sudo echo "password   optional     pam_gnome_keyring.so" >> /etc/pam.d/passwd
