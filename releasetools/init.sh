#!/sbin/sh

model=`cat /proc/cmdline | sed -e 's/^.*boot.hardware=//' -e 's/ .*$//'`

case $model in
     "SHV-E210K")
	busybox echo "ro.build.fingerprint=samsung/c1ktt/c1ktt:4.4.4/KTU84P/E210KKTUKPJ2:user/release-keys" >> /system/build.prop
	busybox echo "ro.build.description=c1ktt-user 4.4.4 KTU84P E210KKTUKPJ2 release-keys" >> /system/build.prop
          ;;
     "SHV-E210L")
	busybox echo "ro.build.fingerprint=samsung/c1lgt/c1lgt:4.4.4/KTU84P/E210LKLUKPJ2:user/release-keys" >> /system/build.prop
	busybox echo "ro.build.description=c1lgt-user 4.4.4 KTU84P E210LKLUKPJ2 release-keys" >> /system/build.prop
          ;; 
     "SHV-E210S")
	busybox echo "ro.build.fingerprint=samsung/c1skt/c1skt:4.4.4/KTU84P/E210SKSUKPJ2:user/release-keys" >> /system/build.prop
	busybox echo "ro.build.description=c1skt-user 4.4.4 KTU84P E210SKSUKPJ2 release-keys" >> /system/build.prop
          ;; 
esac
