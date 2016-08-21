var db = require('../db');


module.exports = {
  messages: {
    get: function (results) { // a function which produces all the messages
      db.con.query('SELECT messages.text, users.username, rooms.roomname FROM messages, users, rooms WHERE messages.usernameId = users.id AND messages.roomId = Rooms.id;', function (err, rows) {
        if ( err ) { 
          return results(err);
        } else {
          results (null, rows);
        }  
      });
    }, 

    post: function (message, done) {
      var userName = message.username;
      var roomName = message.roomname;
      
      db.con.query('SELECT id FROM users WHERE username = ?;', userName, function (err, usernameId) {
        if ( err ) { 
          throw err;
        } else {
          console.log(usernameId, 'should be the userID which is 1!!!');

          db.con.query('SELECT id FROM rooms WHERE roomname = ?;', roomName, function (err, roomnameId) {
            if (err) {
              throw err;
            } else {
              console.log(roomnameId, 'should be the roomID which is 1!');
              db.con.query('INSERT INTO messages VALUES (NULL, CURRENT_TIMESTAMP, "?", "?", "?", CURRENT_TIMESTAMP);', [usernameId, message.text, roomnameId], function (err) {
                console.log(err);
              } );
            }
          });
        }  
      });
      // console.log('guys name is ' + userName);
      // db.con.query('INSERT INTO messages VALUES ( null, CURRENT_TIMESTAMP, ' + userName + ',' + message.message + ',' + message.roomname );
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (ashy) {},
    post: function () {}
  }
};

