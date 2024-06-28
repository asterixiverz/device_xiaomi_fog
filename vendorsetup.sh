# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b thirteen https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b fog-oss https://github.com/asterixiverz/kernel_xiaomi_sm6225 kernel/xiaomi/fog

# Clone 'PixelExperience' hardware/xiaomi
git clone -b thirteen https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

# Clang Missing Fixups
rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
git clone https://gitlab.com/tejas101k/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d

# Vendor Fixups
cd hardware/xiaomi
rm -rf megvii
cd ../..

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..