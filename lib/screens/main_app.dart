import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'cart_screen.dart';
import 'profile_screen.dart';
import 'home_screen.dart';
import 'admin_home_screen.dart';
import 'manage_users.dart';
import 'manage_orders.dart';
import 'manage_products.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/admin': (context) => const AdminHomeScreen(),
        '/manage_users': (context) => const ManageUsersScreen(),
        '/manage_orders': (context) => const ManageOrdersScreen(),
        '/manage_products': (context) => const ManageProductsScreen(),
      },
    );
  }
}
