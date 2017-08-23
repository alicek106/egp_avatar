# egp_avatar
Build Script for Egp Avatar Container.

# How to RUN
[root@localhost #] docker run -d --name avatar \
-e MQTT_BROKER_URL=tcp://BROKER_IP:1883 \
-e MONGO_COLLECTION=mycol \
-e MONGO_DB=data \
-e MONGO_USER=alicek106 \
-e MONGO_PASSWORD=theoryofhappiness \
alicek106/avatar:0.3

# Build
[root@localhost #] docker build . -t myimage

