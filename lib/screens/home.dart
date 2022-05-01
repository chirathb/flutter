import 'package:flutter/material.dart';
import 'package:global_pay_deaf/components/appbar.dart';
import 'package:global_pay_deaf/components/cards.dart';
import 'package:global_pay_deaf/components/recentTransactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(),
            CardsList(),
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
