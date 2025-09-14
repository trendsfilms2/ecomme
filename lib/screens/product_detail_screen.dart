import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productPrice;
  final String productDescription;

  const ProductDetailScreen({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productName)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              productImage,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              productName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 20),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // TODO: Add to cart logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Product added to cart')),
                );
              },
              child: const Text('Add to Cart'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
