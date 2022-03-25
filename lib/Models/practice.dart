class CatalogModel {
  static List<Item> items = [
    // Item(
    // id: 1,
    // name: "OnePlus 9RT",
    // desc: "Qualcomm Snapdragon 888",
    // price: "42,999",
    // color: "White",
    // image:
    //     "https://files.primeuploads.com/cache/plugins/filepreviewer/9692/9a4f64989851fa23ab39f23e8402d6a7040ae9ab2286767c4fea57d1b9bbad53/280x280_middle.jpg"
    // )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
}
