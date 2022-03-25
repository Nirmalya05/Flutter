import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Models/practice.dart';
import 'package:myapp/Widgets/item_widget.dart';

class CatItem extends StatefulWidget {
  const CatItem({Key? key}) : super(key: key);

  @override
  State<CatItem> createState() => _CatItemState();
}

class _CatItemState extends State<CatItem> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson =
        await rootBundle.loadString("Assets/files/phoneCatalog.json");
    var decordedData = jsonDecode(catalogJson);
    var productData = decordedData["product"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(5, (index) => CatalogModel().items[0]);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: (CatalogModel.items.isNotEmpty)
            // ? ListView.builder(
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                // itemBuilder: itemBuilder)
                // itemCount: CatalogModel().items.length,
                // itemCount: dummyList.length,
                itemCount: CatalogModel.items.length,
                itemBuilder: (BuildContext context, int index) {
                  // return ItemWidget(
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                          header: Container(
                            child: Text(item.name),
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.only(left: 10),
                          ),
                          child: Image.network(item.image),
                          footer: Text("₹${item.price}")));

                  // item: CatalogModel().items[index]
                  // item: dummyList[index],
                  // item: CatalogModel.items[index],
                  // );
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
