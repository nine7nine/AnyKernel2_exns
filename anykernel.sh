# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=exNoShadez by nine7nine @ xda-developers
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
do.debug=0
device.name1=sailfish
device.name2=marlin
} # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;


## AnyKernel install
dump_boot;

# ramdisk changes
mount -o rw,remount -t auto /system;
insert_line "/system/init.rc" "init.exnoshadez.rc" after "import /init.usb.configfs.rc" "import /init.exnoshadez.rc"
replace_file "/system/init.exnoshadez.rc" 750 "/init.exnoshadez.rc"
replace_file "/system/devfreq_set.sh" 750 "/devfreq_set.sh"
mount -o ro,remount -t auto /system;

write_boot;

## end install

