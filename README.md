# eCart Widgets

![Pub Version](https://img.shields.io/pub/v/eCartWidgets)
[![License](https://img.shields.io/github/license/MaloWinrhy/eCartWidgets)](https://github.com/MaloWinrhy/eCartWidgets/blob/main/LICENSE)
![Build Status](https://img.shields.io/travis/MaloWinrhy/eCartWidgets/main)
![Coverage](https://img.shields.io/codecov/c/github/MaloWinrhy/eCartWidgets)

A Flutter package that provides a collection of widgets and tools designed to streamline the development of e-commerce applications. With `eCart Widgets`, you can easily implement product grids, detail views, shopping carts, and checkout processes in your Flutter app.

## Features

- **Product Grid**: Display products in a customizable grid layout.
- **Product Details**: Detailed views for each product, including image galleries, descriptions, and purchase options.
- **Shopping Cart**(incomming): A widget to show cart contents and manage product quantities.
- **Checkout Process**(incomming): Streamline the checkout process with address selection, payment method choices, and order summaries.
**Product Swiper**: A carousel widget for showcasing featured products.

## Getting Started

To use `eCart Widgets` in your Flutter project, add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  ecart_widgets: ^latest_version
```

## Installation
After updating your pubspec.yaml, run the following command in your terminal to install the package:
```bash
flutter pub get
```


### EcartProductsSwiper

The `EcartProductsSwiper` widget provides an engaging way to showcase featured products through a swipeable carousel. Ideal for highlighting top-rated products, promotions, or new arrivals, this widget enhances user interaction and product visibility.

#### Usage

To integrate the `EcartProductsSwiper` into your app, first ensure that you have a list of products. You might want to filter this list to include only those products that meet certain criteria, such as having a 5-star rating:

```dart
EcartProductsSwiper(
  featuredProducts: loadedProducts
      .where((product) => product.rating == 5)
      .toList(),
),
```

In this example, `EcartProductsSwiper` is used within a `SizedBox` to control its height, showcasing products with a 5-star rating. Customize the swiper according to your needs, such as adjusting its size, or filtering products differently.

Place the `EcartProductsSwiper` widget in your app's widget tree where you want the product carousel to appear. This flexible widget can be easily integrated into various parts of your app to create a dynamic and engaging user experience.


### EcartProductGrid

The `EcartProductGrid` widget offers a flexible and efficient way to display products in a grid layout. It's designed to provide users with a clear overview of the products available in your Flutter app, enhancing the browsing experience.

#### Usage

Integrating `EcartProductGrid` into your app is straightforward. Here's an example on how to use it:

```dart
EcartProductGrid(
  products: loadedProducts, // Your list of products
  crossAxisCount: 2, // Number of columns
  childAspectRatio: 1, // Aspect ratio of each item
  crossAxisSpacing: 10, // Horizontal spacing between items
  mainAxisSpacing: 10, // Vertical spacing between items
  imageBorderRadius: BorderRadius.circular(25), // Border radius of product images
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  priceTextStyle: TextStyle(
    fontSize: 14,
    color: Colors.green,
  ),
  ratingStarColor: Color.fromARGB(255, 219, 182, 15), // Color of rating stars
),
```

This widget allows you to customize various aspects such as the number of columns, item aspect ratio, spacing, and styles, ensuring that the product grid matches your app's design language. The `EcartProductGrid` is an essential component for e-commerce apps, providing a scalable solution for displaying a large number of products in an organized manner.



## Contributing
We welcome contributions to eCart Widgets! If you have suggestions or improvements, please fork the repository and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

## License
eCart Widgets is licensed under the MIT License - see the LICENSE file for details.

