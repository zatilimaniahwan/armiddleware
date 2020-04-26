'user strict';
const mysql = require('mysql');

//local mysql db connection
const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'ardb'
});

module.exports = connection;