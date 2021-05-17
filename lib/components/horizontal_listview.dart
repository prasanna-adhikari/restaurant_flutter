import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
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

  const Items({Key key, this.image_location, this.image_caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Container(

              width: 200.0,
              child: ListTile(
                title: Image.asset(
                  image_location,
                  fit: BoxFit.cover,

                ),
                subtitle: Text(image_caption),
              ),
            ),
            Container(
                width: 200.0,
                alignment: Alignment.center,
                child: Text(
                  image_caption,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                )),
          ],
        ),
      ),
    );
  }
}
