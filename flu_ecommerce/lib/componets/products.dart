import 'package:fluecommerce/pages/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
          return Single_prod(
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['old_price'],
            prod_price: products_list[index]['price'],
          );
        }
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Single_prod({
      this.prod_name, this.prod_picture, this.prod_old_price, this.prod_price
  });

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
