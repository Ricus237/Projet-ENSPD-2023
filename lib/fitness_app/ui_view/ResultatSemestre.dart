// ignore_for_file: unused_import

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable
class ResultatSem extends StatelessWidget {

  //@override
  //State<FetchData> createState() => _FetchDataState();
//}

//class _FetchDataState extends State<FetchData> {

  Query dbRef = FirebaseDatabase.instance
      .ref()
      .child('Resultats');

  Widget listItem({required Map document, required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 210, 228, 219),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 135,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "images/logo.jpg",
                width: 35,
              ),
              Spacer(),
              Text(
                document['Titre'],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                document['Semestre'],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Spacer(),
              Text(
                document['Filière'],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                height: 35,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Color.fromRGBO(3, 63, 110, 1),
                onPressed: () async {
               
              final uri = Uri.parse(document['Url']);
                await launchUrl(uri);
                },
                child: Text(
                  "Télécharger",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
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
            title: Text("Resultats Semestriel"),
            backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            actions: <Widget>[]),
        body: Container(
          child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map document = snapshot.value as Map;
              document['key'] = snapshot.key;

              return listItem(document: document, context: context);
            },
          ),
        ));
  }
}
