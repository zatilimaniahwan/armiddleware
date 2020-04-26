'use strict';

const User = require('../models/UserModel');
const Bcrypt = require('bcryptjs'); // encrypt password

// list all users
exports.list = function (res) {
    User.getAllUser(function (err, users) {
        try {
            res.send(users);
            res.status(200).send({ error: false, message: 'Successful fetched' });
        }catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
};

// create new user
exports.create = function (req, res) {
    // Encrypt password before save it to the database
    req.body.password = Bcrypt.hashSync(req.body.password, 10);
    var new_user = new User(req.body);
    //handles null error 
    if (!new_user.fullname || !new_user.username || !new_user.password || !new_user.email || !new_user.contact_number) {
        res.status(400).send({ error: true, message: 'Please provide the data' });
    } else {
        User.createUser(new_user, function () {
            try {
                res.status(200).send({ error: false, message: 'Successful created' });
            } catch (err) {
                res.status(400).send({ error: true, message: err });
            }

        });
    }
};


