import 'package:flutter/material.dart';

class ManageCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String onTapRoute;

  const ManageCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTapRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, size: 30),
        title: Text(title, style: const TextStyle(fontSize: 18)),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, onTapRoute);
        },
      ),
    );
  }
}
