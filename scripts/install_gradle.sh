#!/bin/bash
mkdir -p /opt/gradle
chown -R jenkins:jenkins /opt/gradle
wget https://services.gradle.org/distributions/gradle-5.4.1-bin.zip
unzip gradle-5.4.1-bin.zip
rm gradle-5.4.1-bin.zip
mv gradle-5.4.1 /opt/gradle

export GRADLE_HOME=/opt/gradle/gradle-5.4.1

export PATH=$GRADLE_HOME/bin:$PATH