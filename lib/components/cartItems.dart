import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  var cartItems = [
    {
      "itemName": "Fried MoMo",
      "itemImage": 'images/fried-momo.jpg',
      "itemPrice": 160,
      "quantity": 2,
    },
    {
      "itemName": "Chi. Sausage",
      "itemImage": 'images/chicken sausage.jpg',
      "itemPrice": 160,
      "quantity": 2,
    },
    {
      "itemName": "Coke",
      "itemImage": 'images/coke.jpg',
      "itemPrice": 160,
      "quantity": 2,
    },
    {
      "itemName": "Red Bull",
      "itemImage": 'images/red_bull.jpg',
      "itemPrice": 160,
      "quantity": 12,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Single_Cart_Item(
              itemName: cartItems[index]["itemName"],
              itemPrice: cartItems[index]["itemPrice"],
              itemImage: cartItems[index]["itemImage"],
              quantity: cartItems[index]["quantity"],
            );
          }),
    );
  }
}

class Single_Cart_Item extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final int itemPrice;
  final int quantity;

  Single_Cart_Item(
      {Key key, this.itemName, this.itemImage, this.itemPrice, this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //     padding: const EdgeInsets.all(8.0),
    //   child: Column(
    //      children: [
    //        Container(
    //          width: 100.0,
    //          height: 120.0,
    //          decoration: BoxDecoration(
    //            borderRadius: BorderRadius.circular(20.0),
    //            image: Image.asset(itemImage),
    //          ),
    //        )
    //      ],
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0, 0),
      child: Card(
        child: ListTile(
          leading: Image.asset(itemImage, width: 100.0, fit: BoxFit.cover),
          title: Row(
            children: [
              Expanded(child: Text(itemName)),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                // color: Colors.orange,
                child: InkWell(
                  child: Icon(Icons.highlight_remove_outlined,
                      size: 18.0, color: Colors.grey[350]),
                  onTap: () {
                    print("minus");
                  },
                ),
              ),
              ]),
            ],
          ),

          subtitle: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "Price (each): ${itemPrice}",
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(children: [
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                        color: Colors.orange,
                        child: InkWell(
                          child: Icon(Icons.remove,
                              size: 18.0, color: Colors.white),
                          onTap: () {
                            print("minus");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                        child: Text("${quantity}",style: TextStyle(color:Colors.black),),
                      ),
                      Container(
                        color: Colors.orange,
                        child: InkWell(
                          child: Icon(Icons.add,
                              size: 18.0, color: Colors.white),
                          onTap: () {
                            print("add");
                          },
                        ),
                      ),
                    ])),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("Rs.${itemPrice}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange ),),
                ]),
              ]),
            ],
          ),
        ),
      ),
    );

  }
}
