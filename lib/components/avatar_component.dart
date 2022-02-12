import 'package:flutter/material.dart';

class AvatarComponent extends StatefulWidget {
  const AvatarComponent({Key? key}) : super(key: key);

  @override
  _AvatarComponentState createState() => _AvatarComponentState();
}

class _AvatarComponentState extends State<AvatarComponent> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.contacts_rounded,
        ),
      ),
    );
  }
}
