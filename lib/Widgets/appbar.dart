import 'package:flutter/material.dart';

class MyAppBar {
  static AppBar get homeAppBar => AppBar(
          title: const Center(
        child: Text("This is title"),
      ));

  static AppBar get loginAppBar => AppBar(
        backgroundColor: Colors.orange,
        title: const Center(child: Text("This is Login title")),
      );
}
