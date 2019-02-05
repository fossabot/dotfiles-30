@echo off

ipconfig /release
net stop dhcp
net start dhcp
ipconfig /renew