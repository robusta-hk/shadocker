load("/opt/conf/passwords.js");

// root in all database : can do more stuff than jcvd
db.createUser( {
    user: "sly",
    pwd: "password",
    roles: [ { role: "root", db: "admin" } ]
});

// main user in all databases
db.createUser( {
    user: "jcvd",
    pwd: passwordJcvd,
    //predefined role
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
});

db.shutdownServer({timeoutSecs: 60});

//exit;

//mongo --port 27017 -u "sly" -p "passwordSly" --authenticationDatabase "admin"