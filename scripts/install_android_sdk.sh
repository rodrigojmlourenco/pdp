#!/bin/bash
mkdir -p /opt/android-sdk
chown -R jenkins:jenkins /opt/android-sdk

export ANDROID_HOME=/opt/android-sdk

wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.zip
rm sdk-tools-linux-4333796.zip
mv tools $ANDROID_HOME

wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
unzip platform-tools-latest-linux.zip
rm platform-tools-latest-linux.zip
mv platform-tools $ANDROID_HOME

touch /root/.android/repositories.cfg
export PATH=$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tool:$PATH

yes | sdkmanager --licenses
yes | sdkmanager "platforms;android-28" "build-tools;28.0.3" "build-tools;28.0.2" "build-tools;28.0.1" "build-tools;28.0.0"