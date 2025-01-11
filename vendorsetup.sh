# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..