import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: new Text("\$250"),
              ),
            ),

            Expanded(
              child: new MaterialButton(
                  child: new Text("Check out",style: TextStyle(color: Colors.white),),
                  onPressed: (){},
                  color: Colors.orange,
              )
            ),

          ],
        ),
      ),
    );
  }
}
