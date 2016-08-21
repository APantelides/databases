var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      models.messages.get(function(err, results) {
        if (err) {
          throw err;
        }
        res.status(200).json({results: results});
      });
    },


    post: function (req, res) { // a function which handles posting a message to the database
      console.log('body is', req.body);
      models.messages.post(req.body, function (err) {
        if (err) {
          throw err;
        } 
        res.status(201).send('Sent successfully!');
      });
    } 
  },


  users: {
    // Ditto as above
    get: function (req, res) {
      res.status(200).send('');
    },
    post: function (req, res) {
      res.status(201).send();
    }
  }
};

