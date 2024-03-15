import 'package:flutter/material.dart';
import 'package:ecart_widgets/models/product.dart'; // Ensure the import path is correct

class EcartProductItem extends StatelessWidget {
  final Product product;
  final BorderRadius? imageBorderRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? priceTextStyle;
  final Color? ratingStarColor;

  EcartProductItem({
    required this.product,
    this.imageBorderRadius,
    this.titleTextStyle,
    this.priceTextStyle,
    this.ratingStarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: imageBorderRadius ??
                    BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                image: DecorationImage(
                  image: NetworkImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: titleTextStyle ??
                  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: priceTextStyle ??
                  TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 16,
                  color: index < product.rating
                      ? (ratingStarColor ?? Colors.amber)
                      : Colors.grey,
                );
              }),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
