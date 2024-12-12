// ignore_for_file: unused_import

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable
class Devs extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Developpeurs"),
            backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            actions: <Widget>[]),
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(10),
    child: Column(
      children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('Jack\n21G00...\n(Chef de Groupe)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ), SizedBox(height: 15,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('André\n21G00...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ), SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('Paul\n21G00...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ), SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('Pierre\n21G00...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ), SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('Paul\n21G00163', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ), SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 180, width: 250, fit: BoxFit.cover),
              Spacer(),
              Text('Steve')
            ],
          ), SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 200, width: 300, fit: BoxFit.cover),
              Spacer(),
              Text('sdfd', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('assets/images/pp.png', height: 200, width: 300, fit: BoxFit.cover),
              Spacer(),
              Text('sdfd')
            ],
          ),
      ],
    ),
), 
        
        );
  }
}
