## What does this module do?
It does basically run single command.
> resetprop -n ro.vendor.build.security_patch $(getprop ro.build.version.security_patch)
And creates security_patch.txt if it didint exist already, and if TrickyStore directory is found.

## How does it work?
resetprop sets ro.vendor.build.security_patch prop value to result of command getprop ro.build.version.security_patch,
which does return ro.build.version.security_patch prop value.

## What it actually does?
It does change vendor patch date to match system patch date. It doesnt update vendor itself. Just date displayed.

## How is this usefull?
Older android devices doesnt get stock rom updates, which means, vendor partition isnt updated.
With this script we can get vendor date matched to system date, so with up-to-date custom ROM,
it does appear that vendor is up-to-date too. But its not, vendor binaries are not touched by this module.
It does trick LineageOS Trust that vendor is up-to-date. If you are aware about vendor being outdated,
and you dont want to be notified, because there is nothing we can do about it, you can use this module.

Maybe it can help with play integrity, like with Tricky Store mode, which can spoof vendor date for attestation based on
pre-set value, which you would need to manually change, or by using prop value, which can be provided by this module.

## Using with [TrickyStore](https://github.com/5ec1cff/TrickyStore/blob/release/README.md)?
If you created security_patch.txt add/change
> vendor=prop
> 
in /data/adb/tricky_store/security_patch.txt
to let new value be used when spoofing attestation.

If you didnt creted security_patch.txt, this module will create one for you. You dont need to do anything. (since v2)
