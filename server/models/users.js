var db = require('../db').con;

module.exports = {
  getAll: function (cb) {
    db.query('SELECT username FROM mainchatroom', function(err, results, fields) {
      if (err) {
        throw err;
      }
      cb(JSON.stringify(results));
    });
  },
  create: function (body) {
    db.query(`INSERT INTO mainchatroom (username) VALUES ("${body.username}")`);
  }
};
