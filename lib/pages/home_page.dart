// ignore_for_file: prefer_const_constructors

import 'package:budget_tracker/widgets/transaction_class.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: screenSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircularPercentIndicator(
                radius: screenSize.width / 2.5,
                lineWidth: 10,
                percent: 0.5,
                backgroundColor: Colors.white,
                center: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                      ),
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                progressColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const TransactionCard(
              text: "Apple Watch",
              amount: 105.99,
              isExpense: true,
            ),
            const TransactionCard(
              text: "Apple iphone",
              amount: 800,
              isExpense: false,
            ),
          ],
        ),
      ),
    );
  }
}
