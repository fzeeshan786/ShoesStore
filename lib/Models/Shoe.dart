class Shoe {
  String imagePath;
  String title;
  bool isTrending;
  double price;

  Shoe({
    required this.imagePath,
    required this.title,
    required this.isTrending,
    required this.price,
  });
}

List<Shoe> Shoes = [
  Shoe(imagePath: "assets/shooe_tilt_1.png", title: "Nike Air Max 200",isTrending: true, price: 240.0),
  Shoe(imagePath: "assets/shooe_tilt_2.png", title: "Nike Air Max 500",isTrending: true, price: 440.0),
  Shoe(imagePath: "assets/shooe_tilt_1.png", title: "Nike Air Max 200",isTrending: true, price: 240.0),
];

