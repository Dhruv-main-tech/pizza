import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/pizza.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    return _items.values.fold(0.0, (sum, item) => sum + item.totalPrice);
  }

  void addItem(Pizza pizza, String size) {
    final key = '${pizza.id}_$size';
    if (_items.containsKey(key)) {
      _items.update(
        key,
        (existingItem) => CartItem(
          pizza: existingItem.pizza,
          quantity: existingItem.quantity + 1,
          selectedSize: existingItem.selectedSize,
        ),
      );
    } else {
      _items.putIfAbsent(
        key,
        () => CartItem(pizza: pizza, quantity: 1, selectedSize: size),
      );
    }
    notifyListeners();
  }

  void removeItem(String pizzaId, String size) {
    final key = '${pizzaId}_$size';
    _items.remove(key);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }

  void updateQuantity(String pizzaId, String size, int quantity) {
    final key = '${pizzaId}_$size';
    if (_items.containsKey(key)) {
      if (quantity <= 0) {
        removeItem(pizzaId, size);
      } else {
        _items.update(
          key,
          (existingItem) => CartItem(
            pizza: existingItem.pizza,
            quantity: quantity,
            selectedSize: existingItem.selectedSize,
          ),
        );
      }
      notifyListeners();
    }
  }
}
