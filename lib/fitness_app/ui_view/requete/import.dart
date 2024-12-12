import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'api/firebase_api.dart';
import 'widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:path/path.dart';

class Requete extends StatefulWidget {
  @override
  _RequeteState createState() => _RequeteState();
}

class _RequeteState extends State<Requete> {
  UploadTask? task;
  File? file;
  List<String> classes = [
    "",
    "Niveau 1",
    "niveau 2",
    "Niveau 3",
    "Niveau 4",
    "Niveau 5"
  ];
  List<String> types = ["Contestation de Note", "Autres motifs"];
  
  List<String> allsemestres = [
    "",
    "1er Semestre",
    "2e Semestre",
  ];

  String selectedSem = "";
  String selectedMat = "";
  String selectedClasse = "";
  TextEditingController second = TextEditingController();

  TextEditingController third = TextEditingController();

  TextEditingController four = TextEditingController();

  TextEditingController five = TextEditingController();

  TextEditingController six = TextEditingController();
  final fb1 = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    var rng = Random();
    var k = rng.nextInt(10000);

    final ref1 = fb1.ref().child('Documents/$k');
    final ref2 = fb1.ref().child('Publier/$k');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 63, 110, 1),
        title: Text("Soumettre une Requete"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                child: TextField(
                  controller: second,
                  decoration: const InputDecoration(
                    hintText: 'Nom & prenons',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              
              const SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: third,
                  decoration: const InputDecoration(
                    hintText: 'Matière',
                  ),
                ),
              ),
              
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Classe :"),
                  DropdownButton<String>(
                    value: selectedClasse,
                    items: classes
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 24),
                              ),
                            ))
                        .toList(),
                    onChanged: (item) =>
                        setState((() => selectedClasse = item!)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Semestre :"),
                  DropdownButton<String>(
                    value: selectedSem,
                    items: allsemestres
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 24),
                              ),
                            ))
                        .toList(),
                    onChanged: (item) => setState((() => selectedSem = item!)),
                  ),
                ],
              ), const SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: four,
                  decoration: const InputDecoration(
                    hintText: 'Motif',
                  ),
                ),
              ),
              
              SizedBox(height: 8),
              
              SizedBox(height: 48),
              ButtonWidget(
                text: 'Envoyer',
                icon: Icons.cloud_upload_outlined,
                onClicked: uploadFile,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }



  Future uploadFile() async {
    var rng = Random();
    var k = rng.nextInt(10000);

    final ref1 = fb1.ref().child('Requete/$k');
    if (file == null) return;


    setState(() {});

    if (task == null) return;

    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');
    ref1.set({
      "Matiere": third.text,
      "Nom": second.text,
      "Classe": selectedClasse,
      "Semestre": selectedSem,
      "Motif": four.text
    }).asStream();

}
}