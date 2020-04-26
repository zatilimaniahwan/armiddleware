'use strict';

const cv = require('opencv4nodejs');

// Declare object detect and compute async for opencv
const detectAndComputeAsync = (det, img) =>
    det.detectAsync(img)
        .then(kps => det.computeAsync(img, kps)
            .then(desc => ({ kps, desc }))
        );
// Change based on prefer image
const img1 = cv.imread('data/per.jpg');
const img2 = cv.imread('data/husky.jpg');

const detectorNames = [
    // 'AKAZE',
    // 'BRISK',
    // 'KAZE',
    'ORB'
];
const createDetectorFromName = name => new cv[`${name}Detector`]();

// Match the image
exports.match = function () {
    try {
        detectorNames.map(createDetectorFromName).map(det =>
            Promise.all([detectAndComputeAsync(det, img1), detectAndComputeAsync(det, img2)])
                .then(allResults =>
                    cv.matchBruteForceAsync(
                        allResults[0].desc,
                        allResults[1].desc
                    ).then(matches => ({
                        matches,
                        kps1: allResults[0].kps,
                        kps2: allResults[1].kps
                    }))
                        .then(function (value) {
                            console.log(value.matches);
                        })
                )
        )
    } catch (err) {
        console.log(err);
    }
}

// Rate the image
exports.rate= function(req,res){
    try{
        if (!req.files || Object.keys(req.files).length === 0) {
            return res.status(400).send('No files were uploaded.');
        }
        var file = req.files.sampleImage;
        var filename = file.name;
         // Create folder first before move the file
        file.mv('uploadedImage/'+filename, function(){
            res.status(200).send({ error: false, message: 'Successful moved' });
            cv.imread('uploadedImage/'+filename);
            res.send('File Uploaded')
        })
    }catch(err){
        res.status(500).send({ error: false, message: 'Unsuccessful' });
    }
}