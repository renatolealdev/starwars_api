import 'package:flutter/material.dart';

import '../../store/consult_api.store.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  final api = ConsultApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            color: Colors.blueGrey[800],
            child: Center(
              child: ListView.builder(
                itemCount: api.peopleList.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 200, 200, 200),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(api.peopleList[index]),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
    );
  }
}
