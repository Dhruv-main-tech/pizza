import 'package:flutter/foundation.dart';
import '../models/pizza.dart';

class PizzaProvider with ChangeNotifier {
  final List<Pizza> _pizzas = [
    Pizza(
      id: '1',
      name: 'Margherita',
      description: 'Classic tomato sauce with fresh mozzarella and basil',
      price: 12.99,
      imageUrl: 'https://images.unsplash.com/photo-1604382355076-af4b0eb60143',
      toppings: ['Tomato Sauce', 'Mozzarella', 'Basil'],
      sizes: ['Small', 'Medium', 'Large'],
    ),
    Pizza(
      id: '2',
      name: 'Pepperoni',
      description: 'Spicy pepperoni with melted cheese and tomato sauce',
      price: 14.99,
      imageUrl: 'https://images.unsplash.com/photo-1628840042765-356cda07504e',
      toppings: ['Tomato Sauce', 'Mozzarella', 'Pepperoni'],
      sizes: ['Small', 'Medium', 'Large'],
    ),
    Pizza(
      id: '3',
      name: 'BBQ Chicken',
      description: 'Grilled chicken with BBQ sauce, red onions, and cilantro',
      price: 16.99,
      imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591',
      toppings: [
        'BBQ Sauce',
        'Mozzarella',
        'Grilled Chicken',
        'Red Onions',
        'Cilantro',
      ],
      sizes: ['Small', 'Medium', 'Large'],
    ),
    Pizza(
      id: '4',
      name: 'Vegetarian',
      description: 'Fresh vegetables with tomato sauce and cheese',
      price: 13.99,
      imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591',
      toppings: [
        'Tomato Sauce',
        'Mozzarella',
        'Bell Peppers',
        'Mushrooms',
        'Onions',
        'Olives',
      ],
      sizes: ['Small', 'Medium', 'Large'],
    ),
  ];

  List<Pizza> get pizzas => [..._pizzas];

  Pizza findById(String id) {
    return _pizzas.firstWhere((pizza) => pizza.id == id);
  }

  List<Pizza> getPizzasByCategory(String category) {
    return _pizzas
        .where(
          (pizza) => pizza.name.toLowerCase().contains(category.toLowerCase()),
        )
        .toList();
  }
}
