import 'package:flutter/material.dart';
import '../widgets/manage_card.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ManageCard(
              title: 'Manage Users',
              icon: Icons.person,
              onTapRoute: '/manage_users',
            ),
            SizedBox(height: 10),
            ManageCard(
              title: 'Manage Orders',
              icon: Icons.shopping_cart,
              onTapRoute: '/manage_orders',
            ),
            SizedBox(height: 10),
            ManageCard(
              title: 'Manage Products',
              icon: Icons.inventory,
              onTapRoute: '/manage_products',
            ),
          ],
        ),
      ),
    );
  }
}
