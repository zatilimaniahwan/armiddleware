'user strict';
const conn = require('../DbConfig.js');

// Object constructor for user (sort by following the arrangement of column in database)
const User = function(user){
    this.fullname = user.fullname;
    this.username = user.username;
    this.password = user.password;
    this.email = user.email;
    this.contact_number = user.contact_number;
    this.role_id = user.role_id;
    this.is_active = user.is_active;
    this.activation_code = user.activation_code;
    this.created_at =new Date();
    this.expired_date = new Date();
    this.current_period = user.current_period;
};

// Create new user
User.createUser = function (newUser, result) {    
    conn.query("INSERT INTO users set ? ", newUser, function (err, res) {
       try{
        result(null, res.insertId); 
       }catch(err){
        console.log("error: ", err);
        result(err, null); 
       }  
        });           
};

// Get all users
User.getAllUser = function (result) {
    conn.query("Select * from users", function (err, res) {
        try{
            console.log('users : ', res);  
            result(null, res); 
        }catch(err){
            console.log("error: ", err);
            result(null, err);
        }
    });   
};

 module.exports= User;
