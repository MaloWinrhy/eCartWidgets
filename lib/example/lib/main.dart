import 'package:ecart_widgets/example/lib/data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:ecart_widgets/models/product.dart';
import 'package:ecart_widgets/widgets/product_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCartWidgets Example',
      home: ProductsOverviewPage(),
    );
  }
}

class ProductsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Grid Example'),
      ),
      body: ProductGrid(
        products: loadedProducts,
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        imageBorderRadius: BorderRadius.circular(15),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        priceTextStyle: TextStyle(
          fontSize: 14,
          color: Colors.green,
        ),
        ratingStarColor: Color.fromARGB(255, 219, 182, 15), // Custom style
      ),
    );
  }
}