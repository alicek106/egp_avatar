FROM alicek106/ubuntu:java8

# MONGODB INSTALL
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update
RUN apt-get install -y mongodb-org
RUN mkdir -p /data/db

# INSTALL CURL
RUN apt-get install -y curl
ENTRYPOINT /entrypoint.sh

# SETTING INITIALIZE 
ADD mongo_add_admin.js /mongo_add_admin.js
ADD mongo_add_user.js /mongo_add_user.js
ADD Avatar.jar /Avatar.jar
ADD entrypoint.sh /entrypoint.sh

