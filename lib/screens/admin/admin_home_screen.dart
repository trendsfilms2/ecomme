import 'package:flutter/material.dart';

class Admin Home Screen extends StatelessWidget {
  const Admin Home Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home Screen'),
      ),
      body: const Center(
        child: Text('This is Admin Home Screen'),
      ),
    );
  }
}
