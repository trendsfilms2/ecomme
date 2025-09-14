import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void updateProduct(Product updatedProduct) {
    final index = _products.indexWhere((p) => p.productId == updatedProduct.productId);
    if (index != -1) {
      _products[index] = updatedProduct;
      notifyListeners();
    }
  }

  void removeProduct(String productId) {
    _products.removeWhere((p) => p.productId == productId);
    notifyListeners();
  }
}
