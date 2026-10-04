import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_card.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  static const List<Product> _products = [
    Product(id: '1', name: 'Wireless Headphones', price: 59.99, isSale: true),
    Product(id: '2', name: 'Smart Watch', price: 89.99),
    Product(id: '3', name: 'Bluetooth Speaker', price: 39.99, isSale: true),
    Product(id: '4', name: 'USB-C Charger', price: 19.99),
    Product(id: '5', name: 'Phone Stand', price: 14.99, isSale: true),
    Product(id: '6', name: 'Laptop Backpack', price: 49.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm nổi bật'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: _products[index],
        ),
      ),
    );
  }
}
