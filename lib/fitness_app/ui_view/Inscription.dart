// ignore_for_file: unused_import

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// ignore: must_be_immutable
class Inscription extends StatelessWidget {
  Inscription({
    Key? key,
  }) : super(key: key);

  //@override
  //State<FetchData> createState() => _FetchDataState();
//}

//class _FetchDataState extends State<FetchData> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            title: Text("Inscription & Concours"),
            actions: <Widget>[]),
        body: Padding(
                            padding: const EdgeInsets.only(
                                left: 4, bottom: 8, top: 16),
                            child:Row(children: [

                             
                            Text(
                              "Consulter les informations et procédures concernant le concours",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: -0.1,
                                  color: Color.fromARGB(255, 112, 167, 219)),
                            ),
                            
                            ],),
                           
                            
                          ),
                        
        );
  }
}
