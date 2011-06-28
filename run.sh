#!/bin/sh
cat /sys/kernel/debug/usb/usbmon/2u | ruby event-gen.rb
