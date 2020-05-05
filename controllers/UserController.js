'use strict';

const User = require('../models/UserModel');
const Bcrypt = require('bcryptjs'); // encrypt password

// list all users
exports.list = function (req, res) {
    try {
        User.getAllUser(function (err, users) {

            if (users.length > 0) {
                return res.status(200).send({ status: 200, error: false, message: 'OK', result: users });
            } else {
                return res.status(404).send({ status: 404, error: true, message: err });
            }

        });
    }catch(err){
        throw new Error(err.message);
    }
  
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
            res.status(400).send({ status: 404, error: true, message: 'Not Found' });
        } else {
            User.createUser(new_user, function (err, user) {
                if (user > 0) {
                    return res.status(201).send({ status: 201, error: false, message: 'Ok' });
                } else {
                    return res.status(404).send({ status: 404, error: true, message: err });
                }
            });
        }
    } catch (err) {
        throw new Error(err.message);
    }

};

// Update user
exports.update = function (req, res) {
    try {
        User.update(req.params.user_id, new User(req.body), function (err, user) {
            if (err) {
                return res.status(400).send({ status: 400, error: true, message: err });
            } else {
                return res.status(201).send({ status: 201, error: false, result: user });
            }
        })
    } catch (err) {
        throw new Error(err.message);
    }
}

// Remove user
exports.remove = function (req, res) {
    try {
        User.remove(req.params.user_id, function (err) {
            if (err) {
                return res.status(400).send({ status: 400, error: true, message: err });
            } else {
                return res.status(201).send({ status: 201, error: false, message: 'Ok' });
            }
        });
    } catch (err) {
        throw new Error(err.message);
    }
}

