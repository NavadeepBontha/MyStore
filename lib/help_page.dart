import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        ListTile(
          title: Text('What is MyStore?'),
          subtitle: Text('MyStore is an online platform to purchase clothes.'),
        ),
        ListTile(
          title: Text('How to place an order?'),
          subtitle: Text('Browse products, add to cart, and proceed to checkout.'),
        ),
        ListTile(
          title: Text('What payment methods are accepted?'),
          subtitle: Text('We accept all major credit cards, PayPal, and more.'),
        ),
        // Add more FAQs as needed
      ],
    );
  }
}
