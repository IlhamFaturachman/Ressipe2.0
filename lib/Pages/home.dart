import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ressipe/widgets/itemcard.dart';

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: ListTile(
                leading: Icon(
                  Icons.cancel,
                  size: 40.0,
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
                ),
                title: Text('All Recipes'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemCards(),
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
                ),
                title: Text('Favourite Recipes'),
                onTap: () {
                  //Bapak
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 30.0,
                ),
                title: Text('Account'),
                onTap: () {
                  //Bapak
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 10),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Recommended Recipes",
                        style: GoogleFonts.montserrat(fontSize: 25),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
