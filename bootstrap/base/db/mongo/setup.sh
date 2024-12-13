mongosh
use admin

db.createUser({
  user: "adminUser",
  pwd: "adminPassword",
  roles: ["root"]
})

db.auth("adminUser", "adminPassword")
db.createCollection("graylog")
db.createCollection("graylog-data")

use graylog
db.createUser({
  user: "mongoadmin",
  pwd: "mongoadmin",
  roles: ["readWrite", "dbAdmin"]
})

db.auth("mongoadmin", "mongoadmin")