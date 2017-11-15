# AnyKernel2_EX-Noshades-EAS
AnyKernel Configuration for EX-NoShadez-EAS

AnyKernel2 is used to make flashable zips for EX-NoShades-EAS. It's a fantastic tool and super easy to use. This AnyKernel2 is already setup for my kernel, so no editing required ~ any configuration changes that I make will land in this repo...

Anykernel2 repo: https://github.com/osm0sis/AnyKernel2

In order to use AnyKernel 2, you must have the ramdisk contents from The Pixel's stock boot image (which in my builds, I update every month - as it's hard to know what files or configurations might have been changed in the stock boot.img, month to month). In order to extract the booot.img's ramdisk, you need AIK (Android Image Kitchen).

AIK (all flavours, win/linux): https://forum.xda-developers.com/showthread.php?t=2073775

1. place the boot.img into the AIK-Linux folder
2. extract/split the boot.img

$ ./unpackimg.sh boot.img 

3. copy the ramdisk contents into the AnyKernel_EX-NoShades-EX folder

4. navigate to ../AnyKernel_EX-NoShades-EX/patch and copy;

devfreq_set.sh
init.exnoshadez.rc

..and place them into the ../ramdisk folder.

5. execute: zip -r9 exNoShadez_eas.zip * -x README exNoShadez_eas.zip 
  (from within the AnyKernel_EX-NoShades-EX folder)

6. profit.
