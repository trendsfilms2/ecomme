import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Enter your email to reset password'),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Password reset logic
              },
              child: Text('Send Reset Link'),
            ),
          ],
        ),
      ),
    );
  }
}
