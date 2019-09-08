# TWRP for Tolino eInk reader devices
### State
TWRP builds and is fully functional (hopefully).

### Known working devices
- Tolino Page
- Tolino Shine 2 HD
- Tolino Vision 2 HD
- Tolino Vision 3 HD
- Tolino Vision 4 HD
- Tolino Epos

### Test without installation
1) enter fastboot;
2) in cmd do `fastboot boot <path_to_recovery_image>`

### Installation
1) enter fastboot;
2) in cmd do `fastboot flash recovery <path_to_recovery_image>`

### How to enter recovery
1) completely turn off device;
2) press and hold "back" button;
2) press and hold "glowlight" button;
3) turn device on;
4) wait while device turns on while holding both buttons;

### How to enter fastboot
1) completely turn off device;
2) press and hold "glowlight" button;
3) press and hold "power" button;
4) wait while device turns on while holding both buttons;

### How to build TWRP
1. `repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1`
2. `repo sync -n -j 1 && repo sync -l -j 4`
3. `clone this repo to <twrp_repo>/device/TOLINO/tolino_generic`
4. apply patches from `<twrp_repo>/device/TOLINO/tolino_generic/patches` directory
5. open terminal in `<twrp_repo>` directory;
6. `. build/envsetup.sh`
7. `lunch omni_tolino_generic-userdebug`
8. `mka recoveryimage`

if you want to enable A2 mode:
1. clone [monochrome theme repo](https://github.com/Ryogo-Z/twrp_monochrome_portrait_hdpi_theme/) into `<twrp_repo>/device/TOLINO/tolino_generic/theme`
2. uncomment `TW_IMX_EINK_MONOCHROME` in `BoardConfig.mk`

if everything is successful you should find built recovery by path <twrp_repo>/out/target/product/tolino_generic/recovery.img
