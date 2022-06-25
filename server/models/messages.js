var db = require('../db').con;

module.exports = {
  getAll: function (cb) {
    // console.log('I am the cook that got an order');
    // cb('burrito/tacos');
    // return new Promise((resolve, reject) => {
    //   db.query('SELECT * FROM `messages`', function(err, results, fields) {
    //     if (err) {
    //       reject(err);
    //     } else {
    //       resolve(results);
    //     }
    //   });
    // });
    db.query('SELECT messages FROM mainchatroom', function(err, results, fields) {
      if (err) {
        throw err;
      }
      cb(JSON.stringify(results));
    });
  }, // a function which produces all the messages
  create: function (body) {
    // console.log(db);
    db.query(`INSERT INTO mainchatroom (username, messages, roomname) VALUES ("${body.username}", "${body.message}", "${body.roomname}")`);
  } // a function which can be used to insert a message into the database
};
