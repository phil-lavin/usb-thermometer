usb-thermometer: TEMPer1
===============

Compiling
---------

Do this as root to ensure that the udev rule is installed automagically

* Install libusb. On Debian, apt-get install libusb-dev
* make
* Restart udev. On Debian, /etc/init.d/udev restart

Logger shell script
-------------------

Change the MySQL credentials in do_log.sh, import the schema at database.sql and run do_log.sh.

Original notes from petervojtek/usb-thermometer
-----------------------------------------------

The original version of pcsensor0.0.1 contains a bug: temperatures below zero overflow and instead of displaying -1.3 C, 254.3 C is displayed. This is a quick and dirty hack to fix it.

http://bailey.st/blog/2012/04/12/dirt-cheap-usb-temperature-sensor-with-python-sms-alerting-system/
