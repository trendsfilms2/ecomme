import 'package:flutter/material.dart';
import 'config/firebase_config.dart';
import 'config/multi_provider_setup.dart';
import 'screens/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();

  runApp(withMultiProvider(const MainApp()));
}
