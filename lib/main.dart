import 'package:flutter/material.dart';

import 'screens/dashboard_screen.dart';
import 'screens/product_grid_screen.dart';

void main() {
  runApp(const SimpleProductDashboardApp());
}

class SimpleProductDashboardApp extends StatelessWidget {
  const SimpleProductDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Product Dashboard',
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/products': (context) => const ProductGridScreen(),
      },
    );
  }
}
