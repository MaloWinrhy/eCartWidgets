import 'package:card_swiper/card_swiper.dart';
import 'package:ecart_widgets/models/product.dart';
import 'package:ecart_widgets/widgets/ecart_product_item.dart';
import 'package:flutter/material.dart';

class EcartProductsSwiper extends StatelessWidget {
  final List<Product> featuredProducts;
  final double viewportFraction;
  final double scale;
  final EdgeInsets margin;
  final bool autoPlay;

  EcartProductsSwiper({
    required this.featuredProducts,
    this.viewportFraction = 0.8,
    this.scale = 0.9,
    this.margin = const EdgeInsets.all(5.0),
    this.autoPlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: margin,
          child: EcartProductItem(product: featuredProducts[index]),
        );
      },
      itemCount: featuredProducts.length,
      viewportFraction: viewportFraction,
      scale: scale,
      pagination: SwiperPagination(),
      control: SwiperControl(),
      autoplay: autoPlay, // Utilisation de autoPlay ici
    );
  }
}
