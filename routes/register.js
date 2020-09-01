// Import all Modules 
var express = require('express');
var router = express.Router();
var databaseConnection = require('../config/database');
const { check, validationResult } = require('express-validator');
var bcrypt = require('bcrypt');
const saltRounds = 10;
var passport = require('passport');


/* GET register page*/
router.get('/', function (req, res, next) {
  res.render('register', { page: 'register', menuId: 'register' });
});

router.post('/', [
  //validation check for each fields
  check('email', 'Your email is invalid').isEmail(),
  check('firstName', 'First name is required').notEmpty(),
  check('firstName', 'First Name must be alteast 5 characters').isLength({ min: 5 }),
  check('password', 'Password must be atleast 8 characters').isLength({ min: 8 }),
],
  function (req, res, next) {

    // Check Validated Data
    const result = validationResult(req);
    var errors = result.errors;

    // if errors array conatains errors
    if (!result.isEmpty()) {
      console.log(`errors: ${JSON.stringify(errors)}`);// log errors to terminal 

      //render errors to client/user
      res.render('register', {
        page: 'register',
        menuId: 'register',
        errors: errors
      })
    } else {

      const email = req.body.email;
      const firstName = req.body.firstName;
      const password = req.body.password;

      // hash password 
      bcrypt.hash(password, saltRounds, function (err, hash) {
        //Insert respective data into database
        databaseConnection.query('INSERT INTO users (email, firstName, password) VALUES (?,?,?)', [email, firstName, hash], function (err, results, fields) {
          if (err) throw err;// SQl Errors
          //res.redirect('/signIn');

          //select last inserted user id
          databaseConnection.query('SELECT LAST_INSERT_ID() as user_id', function (err, results, fields) {
            if (err) throw err;// SQL Errors

            const user_id = results[0];
            //console.log(user_id);
            //pass user id into log in function
            req.login(user_id, function (err) {
              res.redirect('/signIn');//redirect user to sign In after registration completed
            });


          });

        })
      });

    }

  });

//store user id in session
passport.serializeUser(function (user_id, done) {
  done(null, user_id);
});
// read user id from session
passport.deserializeUser(function (user_id, done) {
  done(null, user_id);
});

function authenticationMiddleware() {
  return (req, res, next) => {
    console.log(`req.session.passport.user: ${JSON.stringify(req.session.passport)}`);

    if (req.isAuthenticated()) return next();
    res.redirect('/signIn')
  }
}

module.exports = router;
