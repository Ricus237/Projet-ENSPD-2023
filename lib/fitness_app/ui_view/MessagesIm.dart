// ignore_for_file: unused_import

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../fitness_app_theme.dart';


// ignore: must_be_immutable
class MessagesIm extends StatelessWidget {
  MessagesIm({
    Key? key,
  }) : super(key: key);

  //@override
  //State<FetchData> createState() => _FetchDataState();
//}

//class _FetchDataState extends State<FetchData> {

  Query dbRef = FirebaseDatabase.instance
      .ref()
      .child('Messages');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Messages');

  Widget listItem({required Map doc, required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)
                          
                        ),
        color: Color.fromARGB(255, 210, 228, 219),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
                            padding: const EdgeInsets.only(
                                left: 4, bottom: 8, top: 16),
                            child: Text("ADMIN@ENSPD", textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: FitnessAppTheme.fontName,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: -0.1,
                                  color: Color.fromRGBO(3, 63, 110, 1),),
                            ),
                          ),
          
           Padding(
                            padding: const EdgeInsets.only(
                                left: 4, bottom: 8, top: 16),
                            child: Text(doc['Texte'], textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: FitnessAppTheme.fontName,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  letterSpacing: -0.1,
                                  color: Color.fromRGBO(3, 63, 110, 1)),
                            ),
                          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            title: Text("Messages Importants"),
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
