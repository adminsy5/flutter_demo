class ItemsOfApp {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  ItemsOfApp(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory ItemsOfApp.fromMap(Map<String, dynamic> map) {
    return ItemsOfApp(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };

  static List<ItemsOfApp>? items;
}

// class ItemsOfModel {
  
// }
