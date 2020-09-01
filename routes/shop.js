// Import all Modules 
var express = require('express');
var router = express.Router();
var databaseConnection = require('../config/database');
var passport = require('passport');


/* GET shop page. */
router.get('/',  function (req, res) {
  var sql = 'SELECT * FROM product';// select all data from product table
  databaseConnection.query(sql, function (err, result, fields) {
    // if error exist 
    if (err) {
      throw err;
    } else {
      res.render('shop', { page: 'Shop', menuId: 'Shop', productsData: result });
      console.log(req.isAuthenticated());
    }
  });
});


module.exports = router;
