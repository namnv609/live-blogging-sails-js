// Generated by CoffeeScript 1.8.0
(function() {
  module.exports = {

    /* UserController.index() */
    index: function(req, res) {
      var findParams, params;
      params = req.params.all();
      findParams = {};
      if (params.name) {
        findParams = {
          name: params.name
        };
      }
      return User.find(findParams).exec(function(error, data) {
        return res.view({
          users: data
        });
      });
    },

    /* UserController.create() */
    create: function(req, res) {
      var params;
      params = req.params.all();
      return User.create({
        name: params.name,
        email: params.email,
        password: params.password
      }).exec(function(error, data) {
        if (error && error.invalidAttributes) {
          req.flash('errors', MyServices.modelValidation(User, error.invalidAttributes));
          return res.redirect('/register');
        }
        sails.io.sockets.emit('insert-user', data);
        return res.redirect('/users');
      });
    },
    subscribe: function(req, res) {
      return User.find(function(err, users) {
        if (err) {
          return next(err);
        }
        User.subscribe(req.socket);
        User.subscribe(req.socket, users);
        return res.send(200);
      });
    },

    /* UserController.delete() */
    "delete": function(req, res) {
      return res.json({
        todo: 'delete function'
      });
    }
  };

}).call(this);
