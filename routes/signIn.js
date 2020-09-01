// Import all Modules
var express = require('express');
var router = express.Router();
var passport = require('passport');



/* GET sign In Page */
router.get('/', function (req, res, next) {
  res.render('signIn', { page: 'SignIn', menuId: 'SignIn' });
  console.log(req.isAuthenticated());
});

//calls passport autenticate function
router.post('/', passport.authenticate('local', {
  successRedirect: '/',//redirect to home page if sign in successful
  failureRedirect: '/signIn',//redirect to sign in again if not successful
  failureFlash: true
}));

module.exports = router;
