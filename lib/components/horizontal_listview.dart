import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Items(
            image_location: 'images/chicken sausage.jpg',
            image_caption: 'Fast Food',
          ),
          Items(
            image_location: 'images/coke.jpg',
            image_caption: 'Beverage',
          ),
          Items(
            image_location: 'images/mushroom_soup.jpg',
            image_caption: 'Soup',
          ),
          Items(
            image_location: 'images/french fries.jpg',
            image_caption: 'Snack',
          ),


        ],
      ),
    );
  }
}
class Items extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Items({Key key, this.image_location, this.image_caption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 150.0,
          height:120.0,
          child: ListTile(
            title: Image.asset(image_location,width: 120,height: 120,),
            subtitle: Text(image_caption),
          ),
        ),

      ),
    );
  }
}
