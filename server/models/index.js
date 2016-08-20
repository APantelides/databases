var db = require('../db');

module.exports = {
  messages: {
    get: function (done) {
      db.get().query('SELECT * FROM messages', function (err, rows) {
        if ( err ) { 
          return done(err);
        } else { 
          done (null, rows); 
        }  
      });
    }, // a function which produces all the messages
    post: function (username, message, room, done) {
      var userID = 'somestuff';//do query to user
      
      // we promise to write some promises in this general vicinity

      var values = [username, message, room];

      db.get().query('INSERT INTO messages (username');
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (ashy) {},
    post: function () {}
  }
};

