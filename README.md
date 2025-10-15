rm -rf out/soong

source build/envsetup.sh

lunch lineage_onyx-ap2a-userdebug

mka bacon -j8
or 
mka bacon -j$(nproc)
