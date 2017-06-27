use admin
db.createUser({ user: "admin", pwd:"theoryofhappiness", roles:[ "userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase"]})

use testdb
db.createUser({user:"alicek106", pwd:"theoryofhappiness", roles:["dbAdmin", "readWrite"]})
