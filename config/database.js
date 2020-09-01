var mysql = require('mysql');// import mysql 

// Connect to Database
var connection = mysql.createConnection({
  host: "localhost",//name of host
  user: "root",// name of user
  password: "password", // password for user
  database: 'jordanRack' // name of database/schema
});

// pool connection
connection.connect(function(err) {
  if (err) throw err;// if err display err
  console.log("Server Running!");// else start up server
});
module.exports = connection;//export module