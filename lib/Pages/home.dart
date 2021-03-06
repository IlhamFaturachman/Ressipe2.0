import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ressipe/Pages/allrecipe.dart';
import 'package:ressipe/Pages/favrecipes.dart';
import 'package:ressipe/widgets/itemcards.dart';
import 'package:ressipe/widgets/itemrecipe.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 0, 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xff161616),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: ListTile(
                  leading: Icon(
                    Icons.cancel,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onTap: () {
                    //bapak
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.save,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'All Recipes',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllRecipes(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Favourite Recipes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavRecipes(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Account',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    //Bapak
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff161616),
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.40 - 17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/resep.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 30),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Recommended Recipes",
                        style: GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              ItemCards()
            ],
          ),
        ),
      ),
    );
  }
}
