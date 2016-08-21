var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".
var connection = mysql.createConnection({
  user: 'root',
  password: '1234',
  database: 'chat'
});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
  console.log('connected as id ' + connection.threadId);
});

module.exports.con = connection;
// connection.query('INSERT INTO rooms VALUES (null, "me");', function (err, rows, fields) {
//   if ( err ) { 
//     throw (err);
//   } else { 
//     console.log(rows); 
//   }  
// });
// connection.query('INSERT INTO users VALUES (null, "you");', function (err, rows, fields) {
//   if ( err ) { 
//     throw (err);
//   } else { 
//     console.log(rows); 
//   }  
// });
// connection.query('INSERT INTO messages VALUES (null, CURRENT_TIMESTAMP, 1, "yo yo yo yo", 1, CURRENT_TIMESTAMP);', function (err, rows, fields) {
//   if ( err ) { 
//     throw (err);
//   } else { 
//     console.log(rows); 
//   }  
// });
// connection.query('SELECT * FROM messages;', function (err, rows, fields) {
//   if ( err ) { 
//     throw (err);
//   } else { 
//     console.log(rows); 
//   }  
// });