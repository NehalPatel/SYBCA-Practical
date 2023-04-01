
import 'package:flutter/material.dart';
import 'package:flutter_banking_app/components/my_app_template.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final double currentBalance = 10000;
  final List<Map<String, dynamic>> transactions = [
    {
      'description': 'Payment received from Shyam',
      'date': 'Mar 29, 2023',
      'amount': 1500.00,
    },
    {
      'description': 'Payment sent to Kabira',
      'date': 'Mar 28, 2023',
      'amount': -1000.00,
    },
    {
      'description': 'Payment received from Babubhai',
      'date': 'Mar 27, 2023',
      'amount': 500.00,
    },
    {
      'description': 'Monthly rent payment',
      'date': 'Mar 25, 2023',
      'amount': -2000.00,
    },
    {
      'description': 'Payment received from Shyam',
      'date': 'Mar 24, 2023',
      'amount': 1000.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MyAppTemplate(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Current Balance',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '\₹${currentBalance.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return ListTile(
                  leading: Icon(Icons.payment),
                  title: Text(transaction['description']),
                  subtitle: Text(transaction['date']),
                  trailing: Text(
                    '\₹${transaction['amount'].toStringAsFixed(2)}',
                    style: TextStyle(
                      color: transaction['amount'] < 0 ? Colors.red : Colors.green,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
