import 'package:flutter/material.dart';

import 'home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
        }, child: Text('Cart')),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          // IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        elevation: 0.0,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(

          children: [
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("Rs 230"),
              ),

            ),
            Expanded(
                child: MaterialButton(

                  onPressed: (){},
                  child: Text("Confirm Order", style: TextStyle(
                    color: Colors.white,
                  ),),
                  color: Colors.deepOrange,
                )
            )
          ],
        ),
      ),
    );
  }
}
