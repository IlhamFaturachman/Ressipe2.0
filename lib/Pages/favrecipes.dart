import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ressipe/widgets/itemrecipe.dart';

class FavRecipes extends StatefulWidget {
  const FavRecipes({Key? key}) : super(key: key);

  @override
  _FavRecipesState createState() => _FavRecipesState();
}

class _FavRecipesState extends State<FavRecipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Favourite Recipes",
          style: GoogleFonts.montserrat(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [ItemRecipes()],
          ),
        ),
      ),
    );
  }
}
