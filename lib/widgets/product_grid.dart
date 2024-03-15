import 'package:flutter/material.dart';
import 'package:ecart_widgets/models/product.dart';
import 'product_item.dart'; // Assurez-vous que le chemin est correct

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  final int crossAxisCount;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final BorderRadius? imageBorderRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? priceTextStyle;
  final Color? ratingStarColor;

  ProductGrid({
    required this.products,
    this.crossAxisCount = 2,
    this.childAspectRatio = 3 / 2,
    this.crossAxisSpacing = 10,
    this.mainAxisSpacing = 10,
    this.imageBorderRadius,
    this.titleTextStyle,
    this.priceTextStyle,
    this.ratingStarColor,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        product: products[i],
        imageBorderRadius: imageBorderRadius,
        titleTextStyle: titleTextStyle,
        priceTextStyle: priceTextStyle,
        ratingStarColor: ratingStarColor,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
    );
  }
}
