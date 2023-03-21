#!/bin/sh

APP_NAME=$(cat app_name.txt)

# Android
ESCAPED_APP_NAME=$(echo ${APP_NAME} | sed 's/\\/\\\\/g' | sed 's/&/\\\&/g' | sed 's/\//\\\//g')
sed -i '' "s/android:label=\".*\"/android:label=\"$ESCAPED_APP_NAME\"/" android/app/src/main/AndroidManifest.xml

# iOS
/usr/libexec/PlistBuddy -c "Set :CFBundleName $APP_NAME" ios/Runner/Info.plist

# macOS
if [ -e "macos/Runner/Configs/AppInfo.xcconfig" ]; then
  sed -i '' "s/^PRODUCT_NAME = .*$/PRODUCT_NAME = $APP_NAME/" macos/Runner/Configs/AppInfo.xcconfig
fi

echo "App name updated to: $APP_NAME"
