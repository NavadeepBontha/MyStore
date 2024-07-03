import 'package:flutter/material.dart';
import '../data/dummy_products.dart';
import '../widgets/product_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: DUMMY_PRODUCTS.length,
        itemBuilder: (ctx, i) => ProductItem(
          id: DUMMY_PRODUCTS[i].id,
          title: DUMMY_PRODUCTS[i].title,
          imageUrl: DUMMY_PRODUCTS[i].imageUrl,
          price: DUMMY_PRODUCTS[i].price,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
