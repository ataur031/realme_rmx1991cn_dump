#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:100663296:21db9b40e7e7d9eac49d30f1ae694604abd18350; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:4b0b99ebb40c95766d8d34ae7ac299bed437c918 EMMC:/dev/block/bootdevice/by-name/recovery 21db9b40e7e7d9eac49d30f1ae694604abd18350 100663296 4b0b99ebb40c95766d8d34ae7ac299bed437c918:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
