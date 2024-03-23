echo "Cloning required stuffs..."

echo "Cloning kernel..."
git clone https://github.com/Karan-Frost/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1
git clone https://github.com/Karan-Frost/device_xiaomi_veux-kernel.git device/xiaomi/veux-kernel

echo "Cloning Vendor..."
git clone https://gitlab.com/Karan-Frost/vendor_xiaomi_veux.git -b fourteen vendor/xiaomi/veux

echo "Cloning MIUI Cam..."
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_miuicamera-veux.git -b fourteen vendor/xiaomi/miuicamera-veux