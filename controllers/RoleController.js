'use strict';

const Role = require('../models/RoleModel');

// list all roles
exports.list = function (req,res) {
    Role.getAllRole(function (err, roles) {
        try {
            if (roles.length > 0) {
                return res.status(200).send(users);
            }else{
                return res.status(400).send('No data available');
            }
        }catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
};

// Create new role
exports.create = function (req, res) {
    var new_role = new Role(req.body);
    //handles null error 
    if (!new_role.role || !new_role.created_at) {
        res.status(400).send({ error: true, message: 'Please provide the data' });
    } else {
       Role.createRole(new_role, function (res,role) {
            try {
                if(role >0){
                    return res.status(200).send('Successful');
                }else{
                   return res.status(400).send('Please try again');
                }
            } catch (err) {
                res.status(400).send({ error: true, message: err });
            }

        });
    }
};