import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.40 - 17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Resep 2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                ),
                child: Text(
                  "Daging Semut",
                  style: GoogleFonts.ubuntuCondensed(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  bottom: 30,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "20 Jam",
                      style: GoogleFonts.ubuntuCondensed(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(
                  "Ingredients",
                  style: GoogleFonts.ubuntuCondensed(fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Column(
                  children: <Widget>[
                    Text("Bapak 1"),
                    Text("Bapak 2"),
                    Text("Bapak 3"),
                    Text("Bapak 3"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
