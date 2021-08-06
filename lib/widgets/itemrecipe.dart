import 'package:flutter/material.dart';
import 'package:ressipe/widgets/itemcards.dart';

class ItemRecipes extends StatelessWidget {
  const ItemRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ItemCards(
            image: "assets/images/Resep 2.jpg",
            title: "Daging Semut",
            time: "20 jam",
          ),
          ItemCards(
            image: "assets/images/Resep 2.jpg",
            title: "Daging Semut",
            time: "20 jam",
          ),
          ItemCards(
            image: "assets/images/Resep 2.jpg",
            title: "Daging Semut",
            time: "20 jam",
          ),
        ],
      ),
    );
  }
}
