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

  static final items = [
    ItemsOfApp(
      id: 1,
      name: "iphone 12 Pro",
      desc: "Apple iphone 12 Generation",
      price: 999,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    )
  ];
}

// class ItemsOfModel {
  
// }
