import 'package:flutter/material.dart';
import '../models/product.dart'; // Import your Product model
import '../data/dummy_products.dart'; // Import DUMMY_PRODUCTS or your actual product data

class CartPage extends StatelessWidget {
  final List<Product> cartItems = [
    DUMMY_PRODUCTS[0], // Example: Add some items to cart for demonstration
    DUMMY_PRODUCTS[2],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: cartItems.isEmpty
            ? Text('Your cart is empty.')
            : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (ctx, index) => ListTile(
                  leading: Image.network(cartItems[index].imageUrl),
                  title: Text(cartItems[index].title),
                  subtitle: Text('\$${cartItems[index].price.toStringAsFixed(4)}'),
                ),
              ),
      ),
    );
  }
}
