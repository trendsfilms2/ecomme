import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import '../providers/cart_provider.dart';
import '../providers/orders_provider.dart';
import '../providers/products_provider.dart';

Widget withMultiProvider(Widget child) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => OrdersProvider()),
      ChangeNotifierProvider(create: (_) => ProductsProvider()),
    ],
    child: child,
  );
}
