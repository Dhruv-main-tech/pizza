class Pizza {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> toppings;
  final List<String> sizes;

  Pizza({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.toppings,
    required this.sizes,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      toppings: List<String>.from(json['toppings']),
      sizes: List<String>.from(json['sizes']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'toppings': toppings,
      'sizes': sizes,
    };
  }
}
