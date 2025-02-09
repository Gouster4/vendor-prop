#!/system/bin/sh
resetprop -n ro.vendor.build.security_patch $(getprop ro.build.version.security_patch)
