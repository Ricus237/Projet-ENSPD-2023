// ignore_for_file: unused_import

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ALLGalerie extends StatelessWidget {
  ALLGalerie({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            title: Text("Galerie"),
            actions: <Widget>[]),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemCount: 20,
          separatorBuilder: (context, index) => const SizedBox(height: 12,),
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(12),
          
          child: CachedNetworkImage(
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl: "assets/images/slider/1 ($index).jpg",
          ),
        )
        ));
  }
}
