import 'package:fluecommerce/componets/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fluecommerce/componets/horizontal_listview.dart';
import 'package:fluecommerce/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/image_03.jpg'),
          AssetImage('assets/image_02.jpg'),
          AssetImage('assets/image_03.jpg'),
          AssetImage('assets/image_02.jpg'),
          AssetImage('assets/image_03.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.orange,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        title: Text('Ecommerce'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Header part
            new UserAccountsDrawerHeader(
              accountName: Text('Anukul Mehta'),
              accountEmail: Text("mehtaanukul@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange
              ),
            ),

            //boby
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home, color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Order"),
                leading: Icon(Icons.shopping_cart, color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text("Shopping cart"),
                leading: Icon(Icons.dashboard, color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite, color: Colors.orange,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //img carousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontl list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),

          //GridView
          Container(
            height: 320.0,
            child: Products(),
          )


        ],
      ),
    );
  }
}
