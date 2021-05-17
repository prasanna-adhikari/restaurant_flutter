import 'package:flutter/material.dart';
import 'package:restaurant/widget/image_carousel.dart';

import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_image;

  const ProductDetails(
      {Key key,
      this.product_detail_name,
      this.product_detail_price,
      this.product_detail_image})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
          }, child: Text('RoboRes')),
          backgroundColor: Colors.deepOrangeAccent,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            // IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
          elevation: 0.0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 400.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_image, fit: BoxFit.cover,),
                ),
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Rs. ${widget.product_detail_price}",
                          style: TextStyle(
                            color: Colors.deepOrange,
                          ),
                          textAlign: TextAlign.right,
                        ))
                      ],
                    ),

                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Add to Cart"),
                )),
                IconButton(
                    icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Similar Products",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              height: 340.0,
              child: Similar_products(),
            ),
          ],

        )
    );

  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "itemName": "Fried MoMo",
      "itemImage": 'images/fried-momo.jpg',
      "itemPrice": 160,
    },
    {
      "itemName": "Chi. Sausage",
      "itemImage": 'images/chicken sausage.jpg',
      "itemPrice": 160,
    },
    {
      "itemName": "Coke",
      "itemImage": 'images/coke.jpg',
      "itemPrice": 160,
    },
    {
      "itemName": "Red Bull",
      "itemImage": 'images/red_bull.jpg',
      "itemPrice": 160,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_Product(
            itemName: product_list[index]['itemName'],
            itemPrice: product_list[index]['itemPrice'],
            itemImage: product_list[index]['itemImage'],
          );
        });
  }
}
class Similar_Single_Product extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final int itemPrice;

  const Similar_Single_Product({Key key, this.itemName, this.itemImage, this.itemPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Card(
          child: Hero(
            tag: itemName,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                      product_detail_name: itemName,
                      product_detail_price: itemPrice,
                      product_detail_image: itemImage,
                    ))),
                child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              itemName,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Text(
                              "Rs. $itemPrice",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),


                        ]


                    ),
                  ),
                  child: Image.asset(
                    itemImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
