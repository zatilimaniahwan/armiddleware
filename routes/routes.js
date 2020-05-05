'use strict';

module.exports = function (app) {
  const userController = require('../controllers/UserController');
  const authController = require('../controllers/AuthController');
  const tdController = require('../controllers/TdController');
  const imageController = require('../controllers/ImageController');
  const roleController = require('../controllers/RoleController');

  // Test route
  app.get('/hello', function (req, res) {
    res.send('Hello World!');
  });
  /*-------- User -------------------------------------*/
  // list all users 
  app.route('/api/users').get(userController.list);
  // create new user
  app.route('/api/register').post(userController.create);
  // update user
  app.route('/api/edit/:user_id').put(userController.update);
  // delete user
  app.route('/api/delete/:user_id').delete(userController.remove);
  /*---------------------------------------------------*/

  /*-------- Authentication ---------------------------*/
  // login
  app.route('/api/login').post(authController.login);
  //logout
  app.route('/api/logout').get(authController.logout);
  /*---------------------------------------------------*/

  /*-------- TdModel ----------------------------------------------*/
  // Upload File
  app.route('/api/files/upload').post(tdController.upload);
  // List all files
  app.route('/api/files').get(tdController.list);
  // Delete file
  app.route('/api/files/delete/:fileId').delete(tdController.remove);
  /*----------------------------------------------------------------*/

  /*-------- Image ------------------------------------------*/
  // Rate image and upload to the server
  app.route('/api/images/rate').post(imageController.rate);
  // Match the image
  app.route('/api/images/match').post(imageController.match);
  /*---------------------------------------------------------*/
  
  
  /*-------- Role ----------------------------------------------*/
  // Create a new role
  app.route('/api/roles/create').post(roleController.create);
  // List all roles
  app.route('/api/roles').get(roleController.list);
  /*----------------------------------------------------------------*/

};
