// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:starwars_api/components/avatar_component.dart';
import 'package:starwars_api/components/tabs_component.dart';
import 'package:starwars_api/store/application.store.dart';
import 'package:starwars_api/views/pages/favoritePage.dart';
import 'package:starwars_api/views/pages/filmsPage.dart';
import 'package:starwars_api/views/pages/peoplePage.dart';
import 'package:starwars_api/views/pages/webViewPage.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final store = Provider.of<Application>;
  late PageController pagesController;

  @override
  void initState() {
    super.initState();
    pagesController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    const String text = "Site Oficial";
    final store = Provider.of<Application>(context);

    setPaginaAtual(pagina) {
      setState(() {
        store.currentPageView = pagina;
      });
    }

    final heightavailable = (MediaQuery.of(context).size.height) -
        (MediaQuery.of(context).padding.top);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 216, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: heightavailable * 0.10,
            color: Color.fromARGB(255, 190, 216, 255),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 12, 10, 12),
                      height: constraints.maxHeight,
                      width: constraints.maxWidth * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: (store.currentPageView == 3)
                              ? Colors.blueGrey.shade800
                              : Color(0xFF2B2B2B),
                          borderRadius: BorderRadius.circular(50),
                        ),

                        child: GestureDetector(
                          onTap: () {
                            pagesController.animateToPage(3,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          },
                          child: Center(
                            child: Text(
                              text,
                              style: TextStyle(
                                fontFamily: "Kanit",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 219, 219, 219),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth * 0.2,
                      padding: EdgeInsets.all(1.0),
                      child: AvatarComponent(),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: heightavailable * 0.90,
            color: Color.fromARGB(255, 190, 216, 255),
            child: LayoutBuilder(
              builder: (context, constraints) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Observer(
                    builder: (_) => SizedBox(
                      height: constraints.maxHeight * 0.08,
                      child: Row(
                        children: [
                          SizedBox(
                            height: constraints.maxHeight * 0.08,
                            width: (constraints.maxWidth) * (1 / 3),
                            child: GestureDetector(
                              child: TabComponent(
                                text: "Filmes",
                                iconName: Icons.movie_filter_rounded,
                                color: (store.currentPageView == 0)
                                    ? Colors.blueGrey.shade800
                                    : Color(0xFF2B2B2B),
                              ),
                              onTap: () {
                                pagesController.animateToPage(0,
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeIn);
                              },
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.08,
                            width: (constraints.maxWidth) * (1 / 3),
                            child: GestureDetector(
                              child: TabComponent(
                                text: "Personagens",
                                iconName: Icons.recent_actors_rounded,
                                color: (store.currentPageView == 1)
                                    ? Colors.blueGrey.shade800
                                    : Color(0xFF2B2B2B),
                              ),
                              onTap: () {
                                pagesController.animateToPage(1,
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeIn);
                              },
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.08,
                            width: (constraints.maxWidth) * (1 / 3),
                            child: GestureDetector(
                              child: TabComponent(
                                text: "Favoritos",
                                iconName: Icons.star_rounded,
                                color: (store.currentPageView == 2)
                                    ? Colors.blueGrey.shade800
                                    : Color(0xFF2B2B2B),
                              ),
                              onTap: () {
                                pagesController.animateToPage(2,
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeIn);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.92,
                    child: Scaffold(
                      backgroundColor: Color(0xFF111111),
                      body: PageView(
                        controller: pagesController,
                        children: [
                          FilmsPage(),
                          PeoplePage(),
                          FavoritePage(),
                          WebViewPage(),
                        ],
                        onPageChanged: setPaginaAtual,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
