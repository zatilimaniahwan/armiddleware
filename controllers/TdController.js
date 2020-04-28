'use strict';

const TdModel = require('../models/TdModel');

// Upload a new file
exports.upload = function (req, res) {
    //console.log(req.files.sampleFile);
    if (!req.files || Object.keys(req.files).length === 0) {
        return res.status(400).send('No files were uploaded.');
    }
    // change req.files.[based on input name]
    var file = req.files.sampleFile;
    var filename = file.name;

    file.mv('uploadedTdModel/' + filename, function (err) {
        try {
            var tdModel = new TdModel({
                'url': 'uploadedTdModel/' + filename,
                'name': filename
            });
            TdModel.createFile(tdModel, function (err,file) {
                if(file >0){
                    return res.status(200).send('Successful');
                }else{
                   return res.status(400).send('Please try again');
                }
            })
        } catch (error) {
            res.status(400).send({ error: true, message: err });
        }
    })
}

// List all files
exports.list = function (req,res) {
    TdModel.getAllFiles(function (err, files) {
        try {
            if(files.length >0){
               return res.status(200).send(files);
            }else{
                return res.status(400).send('No data available');
            }
          
        } catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
};

// Remove file by ID
exports.remove = function(req, res) {
    TdModel.remove( req.params.fileId, function(file) {
        try {
            res.status(200).send({ error: false, message: 'Successful removed' });
        } catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
  }
