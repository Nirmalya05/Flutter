import 'package:flutter/material.dart';
import 'package:myapp/Utils/routes.dart';

class MyLogin2 extends StatefulWidget {
  const MyLogin2({Key? key}) : super(key: key);

  @override
  _MLlogin2State createState() => _MLlogin2State();
}

class _MLlogin2State extends State<MyLogin2> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "Assets/images/Login.png",
            fit: BoxFit.contain,
          ),
          Text(
            "Welcome $name ",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter your username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter your Password", labelText: "Password"),
                )
              ],
            ),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, MyRoutes.homeRoute);
          //     },
          //     child: const Text("Login")),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Login",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class MyBody {
  static Center get homeBody => const Center(
          child: Center(
        child: Text("Hello I am a android tab"),
      ));
}
