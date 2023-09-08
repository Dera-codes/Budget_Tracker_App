import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String text;
  final double amount;
  final bool isExpense;
  const TransactionCard(
      {required this.amount,
      required this.text,
      required this.isExpense,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              offset: const Offset(0, 25),
              blurRadius: 50,
            )
          ],
        ),
        padding: const EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Text(
              (!isExpense ? "+ " : "- ") + amount.toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
