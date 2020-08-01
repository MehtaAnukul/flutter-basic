import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {

  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/image_02.jpg",
      "price": 100,
      "size": "M",
      "color": "oreange",
      "quantity": 1,
    },
    {
      "name": "Abc Blazer",
      "picture": "assets/image_03.jpg",
      "price": 100,
      "size": "M",
      "color": "red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: products_on_the_cart.length,
          itemBuilder:(context , index){
            return Single_cart_product(
              cart_prod_name: products_on_the_cart[index]["name"],
              cart_prod_picture: products_on_the_cart[index]["picture"],
              cart_prod_price: products_on_the_cart[index]["price"],
              cart_prod_size: products_on_the_cart[index]["size"],
              cart_prod_color: products_on_the_cart[index]["color"],
              cart_prod_qty: products_on_the_cart[index]["quantity"],
            );
          }),
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //============== Leading section ==================
        leading: new Image.asset(cart_prod_picture,width: 100,height: 100,),

        //============ Title Section ===================
        title: new Text(cart_prod_name),

        //============ Subtitle Section ======================
        subtitle: new Column(
          children: <Widget>[
            //ROW inside the column
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size,style: TextStyle(color: Colors.orange),),
                ),

                //=========This section of for the product color===========

                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.orange),),
                ),
              ],
            ),

            //===========THIS SECTION IS FOR THE PRODUCT PRICE============
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                  )
              ),
            )
          ],
        ),

        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }


}

