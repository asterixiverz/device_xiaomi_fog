# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b fourteen https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b fog-oss https://github.com/asterixiverz/kernel_xiaomi_sm6225 kernel/xiaomi/fog

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..

# Fingerprint gesture fixup
cp device/xiaomi/fog/patches/0001-keyboards-make-KEY_HOME-override.patch frameworks/base
cd frameworks/base
git apply -v 0001-keyboards-make-KEY_HOME-override.patch
cd ../..