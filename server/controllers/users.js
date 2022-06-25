var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.users.getAll(function (data) {
      res.end(data);
    });
  },
  post: function (req, res) {
    models.users.create(req.body);
    res.end('After post is executed');
  }
};
