class Product {
  int id;
  String name;
  String barCode;
  String description;


  Product({required this.id, required this.name, required this.barCode, required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      barCode: json['barCode'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'barCode': barCode,
    'description': description,
  };

  @override
  String toString() {
    return name;
  }


}