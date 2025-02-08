#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
resetprop -n ro.vendor.build.security_patch $(getprop ro.build.version.security_patch)
# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
