# AnyKernel2_exns
AnyKernel Configuration for EX-NoShadez-EAS

AnyKernel2 is used to make flashable zips for EX-NoShades-EAS. It's a fantastic tool and super easy to use. This AnyKernel2 is already setup for my kernel, so no editing required ~ any configuration changes that I make will land in this repo...

- Anykernel2 repo: https://github.com/osm0sis/AnyKernel2
- XDA thread: https://forum.xda-developers.com/showthread.php?t=2239421 

In order to use AnyKernel 2, you must have the /ramdisk folder from The Pixel's stock boot image (which in my builds, I update every month - as it's hard to know what files or configurations might have been changed in the stock boot.img, month to month). In order to extract the booot.img's ramdisk, you need AIK (Android Image Kitchen).

- XDA thread AIK (all flavours, win/linux): https://forum.xda-developers.com/showthread.php?t=2073775

# Instructions

1. place your compiled kernel image into /AnyKernel2_exns folder
- ( ie: ../Marlin_exns_eas/arch/arm64/boot/Image.lz4-dtb)

2. navigate to ../AnyKernel2_exns/patch folder and copy;

- devfreq_set.sh
- init.exnoshadez.rc

..and place them into the ../ramdisk folder.

3. execute: 

$ zip -r9 exNoShadez_eas.zip * -x README exNoShadez_eas.zip 

- (from within the ../AnyKernel_EX-NoShades-EX folder)

4. profit.
