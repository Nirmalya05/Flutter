import 'package:flutter/material.dart';
import 'package:myapp/Models/practice.dart';
import 'package:myapp/Utils/routes.dart';
// import 'package:myapp/Widgets/drawer.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  // const ItemWidget(List<List<Item>> item, {Key? key, required this.tem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.loginRoute);
      },
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("₹${item.price}"),
      // tileColor: Colors.,
    ));
  }
}
