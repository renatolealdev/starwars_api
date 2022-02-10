import 'package:flutter/material.dart';
import 'package:starwars_api/home.dart';

class StarWarsApi extends StatefulWidget {
  StarWarsApi({Key? key}) : super(key: key);

  @override
  State<StarWarsApi> createState() => _StarWarsApiState();
}

class _StarWarsApiState extends State<StarWarsApi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Star Wars API",
      home: Home(),
    );
  }
}