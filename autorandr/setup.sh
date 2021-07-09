#!/usr/bin/env bash

sudo pip install autorandr
sudo mkdir -p /usr/local/lib/udev/rules.d
sudo cp 95-monitor-switch.rules /usr/local/lib/udev/rules.d/
sudo cp autorandr.service /usr/lib/systemd/system/