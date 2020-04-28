'use strict';

const User = require('../models/UserModel');
const Bcrypt = require('bcryptjs'); // encrypt password

// list all users
exports.list = function (req, res) {
    User.getAllUser(function (err, users) {
        try {
            if (users.length > 0) {
                return res.status(200).send(users);
            }else{
                return res.status(400).send('No data available');
            }
        } catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
};

// create new user
exports.create = function (req, res) {
    try {
        var new_user = new User({
            'fullname': req.body.fullname,
            'username': req.body.username,
            'password': Bcrypt.hashSync(req.body.password, 10),  // Encrypt password before save it to the database
            'email': req.body.email,
            'contact_number': req.body.contact_number,
            'role_id': req.body.role_id,
            'is_active': 1,
            'activation_code': req.body.activation_code,
            'current_period': req.body.current_period
        });
            //handles null error 
        if (!new_user.fullname || !new_user.username || !new_user.password || !new_user.email || !new_user.contact_number) {
            res.status(400).send({ error: true, message: 'Please provide the data' });
        } else {
            User.createUser(new_user, function (err, user) {
                if(user >0){
                    return res.status(200).send('Successful');
                }else{
                   return res.status(400).send('Please try again');
                }
            });
        }
    } catch (err) {
        res.status(400).send({ error: true, message: err });
    }

};


