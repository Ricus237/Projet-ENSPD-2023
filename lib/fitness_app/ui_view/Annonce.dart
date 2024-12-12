// ignore_for_file: unused_import

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// ignore: must_be_immutable
class Annonce extends StatelessWidget {
  Annonce({
    Key? key,
  }) : super(key: key);

  //@override
  //State<FetchData> createState() => _FetchDataState();
//}

//class _FetchDataState extends State<FetchData> {

  Query dbRef = FirebaseDatabase.instance
      .ref()
      .child('Annonces');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Annonces');

  Widget listItem({required Map doc, required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 210, 228, 219),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(doc['Image'],
              width: 200,
              height: 180,
              fit: BoxFit.cover,),
                     
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(
                doc['Titre'],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            title: Text("Annonces"),
            actions: <Widget>[]),
        body: Container(
          child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map document = snapshot.value as Map;
              document['key'] = snapshot.key;

              return listItem(doc: document, context: context);
            },
          ),
        ));
  }
}
