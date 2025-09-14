import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ecom App'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Welcome to Ecom App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text('Signup'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: const Text('Cart'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: const Text('Profile'),
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
