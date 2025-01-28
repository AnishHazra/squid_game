import 'package:flutter/material.dart';

class PiggyBankPage extends StatelessWidget {
  const PiggyBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/piggybank.jpg",
        fit: BoxFit.cover,
        height: double.infinity,
      ),
    );
  }
}
