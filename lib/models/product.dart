class Product {
  final int id;
  final double proteins;
  final double fats;
  final double carbs;
  Product({this.id, this.proteins, this.fats, this.carbs});

  static Product instance = Product();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'proteins': proteins,
      'fats': fats,
      'carbs': carbs,
    };
  }
}
