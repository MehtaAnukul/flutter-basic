import 'package:flutter/material.dart';
import 'package:fluecommerce/main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails(
      {this.product_details_name,
      this.product_details_new_price,
      this.product_details_old_price,
      this.product_details_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
            child: Text('Ecommerce')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_details_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_details_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ================= the first buttons =======
          Row(
            children: <Widget>[
              // ========= the Size button ==============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ========= the Color button ==============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ========= the Qty button ==============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Choose the Qty"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ================= the Second buttons =======
          Row(
            children: <Widget>[
              // ========= the Size button ==============
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.orange,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.orange,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.orange,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(
            color: Colors.orange,
          ),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy."),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
              child: new Text(widget.product_details_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              // Rememnber to create the product brand
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("brand X"),)
            ],
          ),

          // Add the product condition
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Product"),
          ),

          //similar products section
          Container(
            height: 330.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var products_list = [
    {
      "name": "Blazer",
      "picture": "assets/image_02.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Abc Blazer",
      "picture": "assets/image_03.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Abc Blazer",
      "picture": "assets/image_02.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Abc Blazer",
      "picture": "assets/image_03.jpg",
      "old_price": 120,
      "price": 100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Similar_single_prod(
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['old_price'],
            prod_price: products_list[index]['price'],
          );
        }
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Similar_single_prod({
      this.prod_name, this.prod_picture, this.prod_old_price, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("abcd"),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(
                  new MaterialPageRoute(
                    //here we are passing the values of the product to the product details page
                      builder: (context)=> new ProductDetails(
                        product_details_name: prod_name,
                        product_details_new_price: prod_price,
                        product_details_old_price: prod_old_price,
                        product_details_picture: prod_picture,
                      )
                  )),
              child: GridTile(
                child: Image.asset(prod_picture,fit: BoxFit.cover,),
                footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ),
                        new Text("\$${prod_price}",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
              ),
            ),
          )
      ),
    );
  }
}


