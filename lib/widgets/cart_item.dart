import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String title;
  final int quantity;
  final double price;

  const CartItem({
    super.key,
    required this.title,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(child: Text('\')),
          ),
        ),
        title: Text(title),
        subtitle: Text('Total: \'),
        trailing: Text(' x'),
      ),
    );
  }
}
