import 'package:flutter/material.dart';
import 'screens/admin/admin_home_screen.dart';
import 'screens/admin/manage_orders_screen.dart';
import 'screens/admin/manage_products_screen.dart';
import 'screens/admin/manage_users_screen.dart';

class AppRoutes {
  static const String adminHome = '/admin-home';
  static const String manageOrders = '/manage-orders';
  static const String manageProducts = '/manage-products';
  static const String manageUsers = '/manage-users';

  static Map<String, WidgetBuilder> get routes {
    return {
      adminHome: (context) => const AdminHomeScreen(),
      manageOrders: (context) => const ManageOrdersScreen(),
      manageProducts: (context) => const ManageProductsScreen(),
      manageUsers: (context) => const ManageUsersScreen(),
    };
  }
}
