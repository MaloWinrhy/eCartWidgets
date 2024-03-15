// Define an enum for supported currencies
enum Currency {
  usd,
  eur,
}

// Map to associate Currency values with their symbols
const Map<Currency, String> currencySymbols = {
  Currency.usd: '\$',
  Currency.eur: '€',
};

// Product model class
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final int stockQuantity;
  final List<String> tags;
  final DateTime dateAdded;
  final Map<String, dynamic> variants;
  final Currency currency;
  final int rating;

  // Constructor
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.stockQuantity,
    required this.tags,
    required this.dateAdded,
    this.variants = const {},
    required this.currency,
    required this.rating,
  });

  // Method to format the price with currency symbol
  String get formattedPrice =>
      '${currencySymbols[currency]}${price.toStringAsFixed(2)}';

  // Method to create a copy of the product with modified values
  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageUrl,
    String? category,
    int? stockQuantity,
    List<String>? tags,
    DateTime? dateAdded,
    Map<String, dynamic>? variants,
    Currency? currency,
    int? rating,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      tags: tags ?? this.tags,
      dateAdded: dateAdded ?? this.dateAdded,
      variants: variants ?? this.variants,
      currency: currency ?? this.currency,
      rating: rating ?? this.rating,
    );
  }

  // Example of using validation (can be expanded as needed)
  bool get isValid => name.isNotEmpty && price > 0 && stockQuantity >= 0;
}
