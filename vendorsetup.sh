for device in $(python vendor/aosp/tools/get_official_devices.py)
do
for var in user userdebug; do
add_lunch_combo simplix_$device-$var
done
done
