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
    
    // Create folder first before move the file
    file.mv('uploadedTdModel/' + filename, function (err) {
        try {
            var tdModel = new TdModel({
                'url': 'uploadedTdModel/' + filename,
                'name': filename
            });
            TdModel.createFile(tdModel, function () {
                res.status(200).send({ error: false, message: 'Successful created' });
            })
        } catch (error) {
            res.status(400).send({ error: true, message: err });
        }
    })
}

// List all files
exports.list = function (res) {
    TdModel.getAllFiles(function (err, files) {
        try {
            res.send(files);
            res.status(200).send({ error: false, message: 'Successful fetched' });
        } catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
};

// Remove file by ID
exports.remove = function(req, res) {
    TdModel.remove( req.params.fileId, function(file) {
        try {
            res.send(file);
            res.status(200).send({ error: false, message: 'Successful removed' });
        } catch (err) {
            res.status(400).send({ error: true, message: err });
        }
    });
  }