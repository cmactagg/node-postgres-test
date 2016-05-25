var pgp = require('pg-promise')();

var cn = 'postgres://postgres:password@localhost:5432/node-postgres-test';

var db = pgp(cn);

db.any("select * from mytest")
    .then(function (data) {
        console.log(data);
    })
    .catch(function (error) {
        // error;
    });



console.log("Running");