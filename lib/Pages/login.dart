import 'package:flutter/material.dart';
import 'package:myapp/Widgets/appbar.dart';
import 'package:myapp/Widgets/body.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar.loginAppBar,
        body: const MyLogin2());
  }
}
