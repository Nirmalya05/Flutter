import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer {
  static Drawer get homeDrawer => Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Nirmalya Maity"),
                  accountEmail: null,
                )),
            ListTile(
              tileColor: Colors.green,
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              tileColor: Colors.green,
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              tileColor: Colors.green,
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );
}
