// Import  Dependencies
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var logger = require('morgan');
var mysql = require('mysql');
var connection = require('./config/database');
var expressValidator = require('express-validator');
var bcrypt = require('bcrypt');

var app = express();

// Authentication Packages
var session = require('express-session');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var MySQLStore = require('express-mysql-session')(session);



// Import Routes 
var homeRouter = require('./routes/home');
var signInRouter = require('./routes/signIn');
var shopRouter = require('./routes/shop');
var registerRouter = require('./routes/register');
var signOutRouter = require('./routes/signOut');
//var cartRouter = require('./routes/addToCart');
var shoppingCart = require('./routes/cart');


``
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// Mysql session store 
var options = {
  host: "localhost",//name of host
  user: "root",// name of user
  password: "password", // password for user
  database: 'jordanRack' // name of database/schema
};
var sessionStore = new MySQLStore(options);

// Use Express Session Cookie
app.use(session({
  secret: 'coderocks',
  resave: false,
  store: sessionStore,
  saveUninitialized: false,
  //cookie: { secure: true }
}));

// Passport Auth 
app.use(passport.initialize());
app.use(passport.session());

// pass session and is authenticated as global functions
app.use(function (req, res, next) {
  res.locals.isAuthenticated = req.isAuthenticated();
  res.locals.session = req.session;
  console.log(req.isAuthenticated());
  next();
});

// Use Routes
app.use('/', homeRouter);
app.use('/signIn', signInRouter);
app.use('/shop', shopRouter);
app.use('/register', registerRouter);
app.use('/signOut', signOutRouter);
//app.use('/addToCart/:id', cartRouter);
app.use('/cart', shoppingCart);


// pass email and password through local strategy 
passport.use(new LocalStrategy({
  //modify parameters
  usernameField: 'email',
  passwordField: 'password'
},
  function (username, password, done) {
    //console.log(username);
    //console.log(password);
    const database = require('./config/database');//gets database module 

    //grabs password  & id from matching email from database
    database.query('SELECT id,  password FROM users WHERE email = ?', [username], function (err, results, fields) {
      if (err) { done(err) };//databse connection errors

      const noPassword = 0;
      // if no password returns
      if (results.length === noPassword) {
        done(null, false)
      } else {
        //comapares hash password to string password 
        const hash = results[0].password.toString();//hash password in database 
        bcrypt.compare(password, hash, function (err, response) {
          //if true logs user in     
          if (response === true) {
            return done(null, { user_id: results[0].id });
          } else {
            return done(null, false);
          }
        });
      }
    })
  }
));


// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
