for combo in $(curl -s https://raw.githubusercontent.com/CesiumOS/vendor_aosp/pie/cesium.devices | sed -e 's/#.*$//' | awk '{printf "aosp_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
