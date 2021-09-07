import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ressipe/Pages/detailscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ItemCards extends StatefulWidget {
  const ItemCards({Key? key}) : super(key: key);

  @override
  _ItemCardsState createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('resep').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            color: const Color(0xff161616),
            child: Column(
              children: snapshot.data!.docs.map(
                (document) {
                  return Card(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(
                            gambar: document['judul'],
                            judul: document['judul'],
                            waktu: document['waktu'],
                            bahan1: document['bahan1'],
                            bahan2: document['bahan1'],
                            bahan3: document['bahan1'],
                            bahan4: document['bahan1'],
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 16.0 / 9.0,
                                child: Image(
                                  image: NetworkImage(document['gambar']),
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                                child: Text(
                                  document['judul'],
                                  style: GoogleFonts.ubuntuCondensed(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 2, 0, 0),
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
                                        document['waktu'],
                                        style: GoogleFonts.ubuntuCondensed(),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          );
        },
      ),
    );
  }
}
