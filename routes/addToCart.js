// Import all Modules 
/*var express = require('express');
var router = express.Router({ mergeParams: true });
var databaseConnection = require('../config/database');
var Cart = require('../config/cart');
var passport = require('passport');

router.get('/', function (req, res){
    var productId = req.params.id;
    console.log(productId);
    var cart = new Cart(req.session.cart ? req.session.cart : {items: {}} );

    var sql = 'SELECT prod_id FROM product';
    databaseConnection.query(sql, function(err, results, fields) {
        if (err){
            throw err;
        } else {
            cart.add(results, results.id);
            req.session.cart = cart;
            console.log(req.session.cart);
            res.redirect('/shop');

        }
    });
});

module.exports = router;*/