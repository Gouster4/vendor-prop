#!/system/bin/sh
MODDIR=${0%/*}
resetprop -n ro.vendor.build.security_patch $(getprop ro.build.version.security_patch)
if [[ -d /data/adb/tricky_store && ! -f /data/adb/tricky_store/security_patch.txt ]]; then
cp $MODDIR/security_patch.txt /data/adb/tricky_store/security_patch.txt
fi
