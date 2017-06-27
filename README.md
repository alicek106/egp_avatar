# egp_avatar
Build Script for Egp Avatar Container.

# How to RUN
[root@localhost #] docker run -d --name avatar -e MQTT_BROKER_URL=tcp://broker:1883 \  
-e MQTT_SUBSCRIBE_TOPIC_PREFIX=sensor \  
-e MQTT_PUBLISH_TOPIC_PREFIX=icns -e MONGO_COLLECTION=mycol \  
-e MONGO_DB=data -e MONGO_USER=alicek106 \  
-e MONGO_PASSWORD=theoryofhappiness \  
-e ANALYZE_INTERVAL=10000 \  
-e AVATAR_UUID=myhash \  
myimage

# Build
[root@localhost #] docker build . -t myimage

