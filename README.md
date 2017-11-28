# egp_avatar
Build Script for Egp Avatar Container.

# How to RUN
[root@localhost #] docker run -d --name avatar \
-e MQTT_BROKER_URL=tcp://BROKER_IP:1883 \
-e DATA_USER=theoryofhappiness \
alicek106/avatar:0.4_canaria

# Build
[root@localhost #] docker build . -t myimage

# Avatar container Versioning
0.4 : CHANGE to final testbed version
0.5 : FIX unix timestamp
0.5_full_unix_2 : CHANGE to full unix timestamp
0.6 : FIX error catching in mqtt messaging

