// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TabComponent extends StatelessWidget {
  final String text;
  final IconData iconName;
  final Color color;

  const TabComponent({
    Key? key,
    required this.text,
    required this.iconName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            size: 20,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Kanit",
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
