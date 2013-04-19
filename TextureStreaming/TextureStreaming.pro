#
# Author:   Luca Carlon
# Company:  -
# Date:     02.09.2013
# Project:  TextureStreaming
#
# Copyright (c) 2012, 2013 Luca Carlon. All rights reserved.
#
# This file is part of TextureStreaming.
#
# TextureStreaming is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# TextureStreaming is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with TextureStreaming.  If not, see <http://www.gnu.org/licenses/>.
#

# Add more folders to ship with the application, here
folder_01.source = qml/TextureStreaming
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp videosurface.cpp
HEADERS += videosurface.h
QT      += opengl

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    android/src/org/kde/necessitas/origo/QtActivity.java \
    android/src/org/kde/necessitas/origo/TextureHelper.java \
    android/src/org/kde/necessitas/origo/MySurfaceTexture.java \
    android/src/org/kde/necessitas/origo/QtApplication.java \
    android/src/org/kde/necessitas/ministro/IMinistro.aidl \
    android/src/org/kde/necessitas/ministro/IMinistroCallback.aidl \
    android/AndroidManifest.xml \
    android/res/values-pl/strings.xml \
    android/res/values-ro/strings.xml \
    android/res/values/libs.xml \
    android/res/values/strings.xml \
    android/res/values-nb/strings.xml \
    android/res/values-rs/strings.xml \
    android/res/drawable-hdpi/icon.png \
    android/res/values-it/strings.xml \
    android/res/values-fr/strings.xml \
    android/res/values-de/strings.xml \
    android/res/values-ms/strings.xml \
    android/res/values-fa/strings.xml \
    android/res/values-es/strings.xml \
    android/res/values-zh-rCN/strings.xml \
    android/res/values-et/strings.xml \
    android/res/drawable-mdpi/icon.png \
    android/res/drawable/icon.png \
    android/res/drawable/logo.png \
    android/res/values-zh-rTW/strings.xml \
    android/res/values-pt-rBR/strings.xml \
    android/res/drawable-ldpi/icon.png \
    android/res/values-ru/strings.xml \
    android/res/values-id/strings.xml \
    android/res/layout/splash.xml \
    android/res/values-el/strings.xml \
    android/res/values-nl/strings.xml \
    android/res/values-ja/strings.xml \
    android/version.xml
