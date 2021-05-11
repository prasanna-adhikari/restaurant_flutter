import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';
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
      body: Container(
          child: SizedBox(
            height: 220.0,
            width: double.infinity,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                AssetImage('images/slide1.jpg'),
                AssetImage('images/slide2.jpg'),
                AssetImage('images/slide3.jpg'),
              ],
            ),
          ),
        )


    );
  }
}
