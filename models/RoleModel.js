'user strict';
const conn = require('../DbConfig.js');

const Role = function(role){
    this.role = role.role;
    this.created_at = role.created_at;
}

// Create new role
Role.createRole = function (newRole, result) {    
    conn.query("INSERT INTO roles set ? ", newRole, function (err, res) {
       try{
        result(null, res.insertId); 
       }catch(err){
        console.log("error: ", err);
        result(err, null); 
       }  
        });           
};
// Get all roles
Role.getAllRole = function (result) {
    conn.query("Select * from roles", function (err, res) {
        try{
            console.log('roles : ', res);  
            result(null, res); 
        }catch(err){
            console.log("error: ", err);
            result(null, err);
        }
    });   
};

 module.exports= Role;