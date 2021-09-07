import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Detail extends StatefulWidget {
  final gambar;
  final judul;
  final waktu;
  final bahan1;
  final bahan2;
  final bahan3;
  final bahan4;

  const Detail(
      {Key? key, this.gambar, this.judul, this.waktu, this.bahan1, this.bahan2, this.bahan3, this.bahan4, value})
      : super(key: key);

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
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('resep').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.40 - 17,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.gambar.toString()),
                          onError: (Object exception, stackTrace) {
                            NetworkImage(widget.gambar.toString());
                          },
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
                        widget.judul,
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
                            widget.waktu,
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
                          Text(widget.bahan1),
                          Text(widget.bahan2),
                          Text(widget.bahan3),
                          Text(widget.bahan4),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: () {
                            // bapak
                          },
                          child: Center(
                            child: Text(
                              "Add To Favourite",
                              style: GoogleFonts.ubuntuCondensed(
                                  textStyle: TextStyle(
                                fontSize: 20,
                              )),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
