// Import all Routes
var express = require('express');
var router = express.Router();
var passport = require('passport');



//Log User Out 
router.get('/', function (req, res) {
  req.logout();//log out user
  req.session.destroy();
  res.redirect('/');// redirect to home page when logged out

});
/*router.get('/', (req, res, next) => {
  req.logout();
  req.session.destroy(() => {
      res.clearCookie('connect.sid')
      res.redirect('/')
  });
});*/



module.exports = router;
