import 'package:flutter/material.dart';

class EditAvatar extends StatefulWidget {
  EditAvatar({Key? key}) : super(key: key);

  @override
  State<EditAvatar> createState() => _EditAvatarState();
}

class _EditAvatarState extends State<EditAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edição de avatar"),
        centerTitle: true,
      ),
    );
  }
}
