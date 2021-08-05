import 'package:flutter/material.dart';

class ItemCards extends StatefulWidget {
  const ItemCards({Key? key}) : super(key: key);

  @override
  _ItemCardsState createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16.0 / 9.0,
                  child: Image(
                    image: AssetImage("assets/images/Resep 2.jpg"),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Daging Semut"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "20 jam",
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
