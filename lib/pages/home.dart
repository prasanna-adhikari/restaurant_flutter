import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:restaurant/components/horizontal_listview.dart';
import 'package:restaurant/components/products.dart';
import 'package:restaurant/widget/image_carousel.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('RoboRes'),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){}
            ),

        ],
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Prasanna'),
                accountEmail: Text('parsanna@gmail.com'),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/Chris.jpg')
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home_sharp),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard_sharp),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket_sharp),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person_sharp),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              splashColor: Colors.grey[800],
              child: ListTile(
                title: Text('Log out', style: TextStyle(color: Colors.grey[800]),),

                leading: Icon(Icons.logout),
              ),
            ),

          ],
        ),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
         children:[
          // image carousel
          Image_carousel(),
           //categories
           Padding(
               padding: const EdgeInsets.all(10.0),
              child: Text('Categories', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
           ),
           Categories(),
           //popular
           Padding(
             padding: const EdgeInsets.fromLTRB(10.0,15.0,10,0),
             child: Text('Popular', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
           ),
           Products(),



         ]

        )


    );
  }
}
