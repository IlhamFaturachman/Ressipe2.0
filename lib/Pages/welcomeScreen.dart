import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ressipe/Pages/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Resep 2.jpg"),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Text("Welcome To Ressipe",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntuCondensed(
                      fontSize: 30, color: Colors.white)),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.ubuntuCondensed(),
                    ),
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
