class Product {
  final String productId;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final int stock;

  Product({
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.stock,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      stock: json['stock'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'stock': stock,
    };
  }
}
