'user strict';
const conn = require('../DbConfig.js');

// Object constructor for tdmodel (sort by following the arrangement of column in database)
const TdModel = function (tdmodel) {
    this.url = tdmodel.url;
    this.name = tdmodel.name;
    this.created_at = new Date();
};

// Create new file
TdModel.createFile = function (newFile, result) {
    conn.query("INSERT INTO tdmodels set ? ", newFile, function (err, res) {
        try {
            console.log(res.insertId);
            result(null, res.insertId);
        } catch (err) {
            console.log("error: ", err);
            result(err, null);
        }
    });
};

// Delete current file
TdModel.remove = function (id, result) {
    conn.query("DELETE FROM tdmodels WHERE id = ?", [id], function (err, res) {
        try {
            result(null, res);
        } catch (err) {
            result(err, null);
        }
    });
};

// Get all files
TdModel.getAllFiles = function (result) {
    conn.query("Select * from tdmodels", function (err, res) {
        try{
            console.log('tdmodels : ', res);  
            result(null, res); 
        }catch(err){
            console.log("error: ", err);
            result(null, err);
        }
    });   
};
module.exports= TdModel;