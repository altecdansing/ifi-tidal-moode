#!/bin/bash

export LD_LIBRARY_PATH=$PWD/lib
DEVICE="Audioengine D1: USB Audio (hw:5,0)"
./bin/tidal_connect_application \
	--tc-certificate-path "./id_certificate/IfiAudio_ZenStream.dat" \
	--netif-for-deviceid eth0 \
	-f "Pi Tidal Connect" \
	--codec-mpegh true \
	--codec-mqa true \
	--model-name "Pi Tidal Connect" \
	--disable-app-security false \
	--disable-web-security false \
	--enable-mqa-passthrough false \
	--playback-device "$DEVICE" \
	--log-level 1 
