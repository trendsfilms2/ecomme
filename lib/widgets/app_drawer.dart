import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Admin Panel'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushNamed('/admin-home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Orders'),
            onTap: () {
              Navigator.of(context).pushNamed('/manage-orders');
            },
          ),
        ],
      ),
    );
  }
}
