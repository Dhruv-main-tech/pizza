import 'pizza.dart';

class CartItem {
  final Pizza pizza;
  int quantity;
  String selectedSize;

  CartItem({
    required this.pizza,
    this.quantity = 1,
    required this.selectedSize,
  });

  double get totalPrice => pizza.price * quantity;

  Map<String, dynamic> toJson() {
    return {
      'pizza': pizza.toJson(),
      'quantity': quantity,
      'selectedSize': selectedSize,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      pizza: Pizza.fromJson(json['pizza']),
      quantity: json['quantity'],
      selectedSize: json['selectedSize'],
    );
  }
}
