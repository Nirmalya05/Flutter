import 'package:flutter/material.dart';
import 'package:myapp/Widgets/appbar.dart';
import 'package:myapp/Widgets/drawer.dart';
import 'package:myapp/Widgets/main_catalog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.homeAppBar,
      body: const CatItem(),
      // body: MyBody.homeBody,
      drawer: MyDrawer.homeDrawer,
    );
  }
}
