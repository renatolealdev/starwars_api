import 'package:flutter/material.dart';

class TabsComponent extends StatefulWidget {
  final String text;
  final IconData iconName;
  final Color color;

  const TabsComponent({
    Key? key,
    required this.text,
    required this.iconName,
    required this.color,
  }) : super(key: key);

  @override
  _TabsComponentState createState() => _TabsComponentState();
}

class _TabsComponentState extends State<TabsComponent> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
