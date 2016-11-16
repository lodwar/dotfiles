#!/bin/bash

systemctl stop postgresql
killall bluetoothd obexd
cp -f ~/resolv.conf /etc/
sudo ntpdate -s time.nist.gov

