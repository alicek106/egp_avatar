#!/bin/bash
mongod --auth &

until curl -s 127.0.0.1:27017; do
        echo "Mongod is initializing.."
        sleep 1
done

if [ -f "/lock" ] ; then
        echo "Already account was initialized."
else
        echo "Initializing mongo account…"
        mongo --port 27017 admin < mongo_add_admin.js
        mongo --port 27017 -u admin -p theoryofhappiness admin < mongo_add_user.js
        touch /lock;
fi

java -jar /Avatar.jar
