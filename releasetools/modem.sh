#!/sbin/sh

model=`cat /proc/cmdline | sed -e 's/^.*boot.hardware=//' -e 's/ .*$//'`

case $model in
     "SHV-E210K")
	dd if=/dev/zero of=/dev/block/mmcblk0p7
	cat /system/bin/kt_modem_ol2.bin > /dev/block/mmcblk0p7
          ;;
     "SHV-E210S")
	dd if=/dev/zero of=/dev/block/mmcblk0p7
	cat /system/bin/skt_modem_ol2.bin > /dev/block/mmcblk0p7
          ;; 
esac
