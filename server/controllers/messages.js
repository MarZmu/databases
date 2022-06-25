var models = require('../models');

module.exports = {
  get: function (req, res) {
    //Invoke getAll, get results, put in response body
    // console.log('get controller messages');
    models.messages.getAll(function (data) {
      // console.log('I am the waiter that got'+data+'from cook');
      res.end(data);
    });
  }, // a function which handles a get request for all messages
  post: function (req, res) {
    // console.log(req.body);
    models.messages.create(req.body);
    res.end('After post is executed');
  } // a function which handles posting a message to the database
};
