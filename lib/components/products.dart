import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
          return Single_Product(
            itemName: product_list[index]['itemName'],
            itemPrice: product_list[index]['itemPrice'],
            itemImage: product_list[index]['itemImage'],
          );
        });
  }
}

class Single_Product extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final int itemPrice;

  const Single_Product({Key key, this.itemName, this.itemImage, this.itemPrice})
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
