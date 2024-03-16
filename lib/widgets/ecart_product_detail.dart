import 'package:ecart_widgets/src/widgets/variant_selector.dart';
import 'package:flutter/material.dart';
import 'package:ecart_widgets/models/product.dart';

class EcartProductDetailPage extends StatelessWidget {
  final Product product;

  EcartProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              product.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *
                  0.4, // Adjust the height as required
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 16),
                  if (product.variants.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: product.variants.entries.map((entry) {
                          return VariantSelector(
                            variantName: entry.key,
                            options: entry.value,
                          );
                        }).toList(),
                      ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add To Cart'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      ),
                    ),
                  )
                  // More product details like description, reviews, etc.
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
