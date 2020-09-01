module.exports = function Cart (oldCart) {
    this.items = oldCart.items;
    this.totalQuantity = oldCart.totalQuantity;
    this.totalPrice = oldCart.totalPrice;

    this.add = function (item , id) {
        var storedItem = this.items[id];
        //if no duplicates product 
        if(!storedItem){
            storedItem = this.items[id] = {item : item, quantity: 0, price: 0};
        } else {
            // else increment price and quantity
            storedItem.quantity++;
            storedItem.price = storedItem.item.price * storedItem.quantity;
            this.totalQuantity++;
            this.totalPrice += storedItem.price;
        }
    }

    // turn item object to array
    this.generateArray = function () {
        var cartItems = [];
        for (var id in this.items){
            cartItems.push(this.items[id ]);
        }
        return cartItems;
    };
};