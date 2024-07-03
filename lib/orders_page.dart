import 'package:flutter/material.dart';
import '../data/dummy_products.dart'; // Import your dummy product data or use actual product data

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: 5, // Example: Displaying 5 items, adjust as needed
        itemBuilder: (ctx, index) {
          final product = DUMMY_PRODUCTS[index]; // Example: Get product from dummy data
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(product.imageUrl),
            ),
            title: Text(product.title),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: Text('Qty: 1'), // Example: Show quantity ordered
          );
        },
      ),
    );
  }
}
