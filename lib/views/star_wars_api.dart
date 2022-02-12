import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:starwars_api/store/application.store.dart';
import 'package:starwars_api/store/consult_api.store.dart';
import 'package:starwars_api/views/edit_avatar.dart';
import 'package:starwars_api/views/home.dart';

class StarWarsApi extends StatefulWidget {
  StarWarsApi({Key? key}) : super(key: key);

  @override
  State<StarWarsApi> createState() => _StarWarsApiState();
}

class _StarWarsApiState extends State<StarWarsApi> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MultiProvider(
      providers: [
        Provider<Application>(create: (context) => Application()),
        Provider<ConsultApi>(create: (context) => ConsultApi()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Star Wars API",
        home: Home(),
      ),
    );
  }
}
