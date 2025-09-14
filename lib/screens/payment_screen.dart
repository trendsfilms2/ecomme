import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedMethod = 'Credit Card';

  final List<String> paymentMethods = [
    'Credit Card',
    'Debit Card',
    'UPI',
    'Net Banking',
    'Cash on Delivery',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Payment Method:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedMethod,
              isExpanded: true,
              items: paymentMethods.map((method) {
                return DropdownMenuItem(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedMethod = value!;
                });
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Amount to Pay:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '999.00',
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement payment logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Payment Confirmed')),
                );
              },
              child: const Text('Confirm Payment'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
