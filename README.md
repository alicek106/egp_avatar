# egp_avatar
Build Script for Egp Avatar Container.

# How to RUN
[root@localhost #] docker run -d --name avatar \
-e MQTT_BROKER_URL=tcp://BROKER_IP:1883 \
-e DATA_USER=theoryofhappiness \
alicek106/avatar:0.4_canaria

# Build
[root@localhost #] docker build . -t myimage

