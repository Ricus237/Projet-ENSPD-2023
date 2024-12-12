import 'package:carousel_slider/carousel_slider.dart';
import 'package:enspd/fitness_app/models/meals_list_data.dart';
import 'package:enspd/fitness_app/ui_view/Devs.dart';
import 'package:enspd/fitness_app/ui_view/body_measurement.dart';
import 'package:enspd/fitness_app/ui_view/title_view.dart';
import 'package:enspd/fitness_app/fitness_app_theme.dart';
import 'package:enspd/fitness_app/my_diary/meals_list_view.dart';
import 'package:flutter/material.dart';

import '../ui_view/Inscription.dart';
import '../ui_view/galerie.dart';

class MyDiaryScreen extends StatefulWidget {
  const MyDiaryScreen({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;
  @override
  _MyDiaryScreenState createState() => _MyDiaryScreenState();
}

class _MyDiaryScreenState extends State<MyDiaryScreen>
    with TickerProviderStateMixin {
  Animation<double>? topBarAnimation;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController!,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    addAllListData();

    super.initState();
  }

  void addAllListData() {
    const int count = 9;

    listViews.add(
      TitleView(
        titleTxt: 'Galerie',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 0, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );
 
  List<String> imageList = [
  "assets/images/slider/1 (13).jpg",
  "assets/images/slider/1 (2).jpg",
  "assets/images/slider/1 (3).jpg",
  "assets/images/slider/1 (4).jpg",
  "assets/images/slider/1 (5).jpg",
  "assets/images/slider/1 (6).jpg",
  "assets/images/slider/1 (7).jpg",
  "assets/images/slider/1 (8).jpg",
  "assets/images/slider/1 (9).jpg",
  "assets/images/slider/1 (10).jpg",
  "assets/images/slider/1 (11).jpg",
  "assets/images/slider/1 (12).jpg",
  "assets/images/slider/1 (18).jpg",
  "assets/images/slider/1 (14).jpg",
  "assets/images/slider/1 (15).jpg",
  "assets/images/slider/1 (16).jpg",
  "assets/images/slider/1 (1).jpg",
  "assets/images/slider/1 (17).jpg",
  "assets/images/slider/1 (19).jpg",
  "assets/images/slider/1 (20).jpg",
  "assets/images/slider/1 (21).jpg",
  "assets/images/slider/1 (22).jpg",
  "assets/images/slider/1 (23).jpg",
  "assets/images/slider/1 (24).jpg",
  "assets/images/slider/1 (0).jpg",];

    listViews.add(GestureDetector(
      child: CarouselSlider(items: imageList.map((e) => ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(e, height: 200, width: 100, fit: BoxFit.cover)
          ],
        )

      )).toList(), options: CarouselOptions(autoPlay: true, enableInfiniteScroll: true, enlargeCenterPage: true, height: 250),
      
    ),
    onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ALLGalerie()));
                          },
      
    ));
    

        listViews.add(SizedBox(height: 30,)
    );

    listViews.add(
      TitleView(
        titleTxt: 'Espace étudiant',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 2, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(GestureDetector(
      child: MealsListView(
        mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: widget.animationController!,
                curve: Interval((1 / count) * 3, 1.0,
                    curve: Curves.fastOutSlowIn))),
        mainScreenAnimationController: widget.animationController,
      ),
      
    )
      
    );

    listViews.add(GestureDetector(
      child :
      TitleView(
        titleTxt: 'Inscription & Concours',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 4, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
      onTap: () {
        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inscription()));
      },
    ));

    listViews.add(GestureDetector(
      child: Concours(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 5, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
      onTap: () {
        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inscription()));
      },
    )
    );

    listViews.add(
      TitleView(
        titleTxt: 'Organigramme & Direction',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 4, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(
      Organigramme(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 5, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(
      TitleView(
        titleTxt: 'Filières & Départements',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 4, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );

    listViews.add(
      Filieres(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController!,
            curve:
                Interval((1 / count) * 5, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController!,
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              getMainListViewUI(),
            ],
          ),
          appBar: AppBar(
            title: Text("ENSPD"),
            backgroundColor: Color.fromRGBO(3, 63, 110, 1),
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Image.asset(
                  "images/logo.jpg",
                ),
                onPressed: () {},
              ),
            ],
          ),
          drawer: Drawer(
              backgroundColor: Color(0xFFACACAC),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('ENSPD'),
                    accountEmail: Text('contact@enspd-udo.cm'),
                    currentAccountPicture: CircleAvatar(
                        backgroundColor: Color.fromRGBO(3, 63, 110, 1),
                        child: ClipOval(
                          child: Image.asset(
                            'images/logo.jpg',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        )),
                    decoration: BoxDecoration(color: Color(0xFFACACAC)),
                  ),
                  
                  ListTile(
                    title: Text('Aide'),
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Developpeurs'),
                    textColor: Colors.white,
                    onTap: () {
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Devs()));
                    },
                  ),
                  ListTile(
                    title: Text('Mentions légales'),
                    textColor: Colors.white,
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text('Politique de confidentialité'),
                    textColor: Colors.white,
                    onTap: () async {},
                  )
                ],
              ))),
    );
  }

  Widget getMainListViewUI() {
    return FutureBuilder<bool>(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(
              top: 10,
              bottom: 62 + MediaQuery.of(context).padding.bottom,
            ),
            itemCount: listViews.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              widget.animationController?.forward();
              return listViews[index];
            },
          );
        }
      },
    );
  }
}
