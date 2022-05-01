import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:global_pay_deaf/components/recentTransactions.dart';
import 'package:global_pay_deaf/screens/profile_page.dart';
import 'package:global_pay_deaf/screens/home.dart';
import 'package:global_pay_deaf/screens/profile_page.dart';
import 'package:global_pay_deaf/screens/viewAddedUsers.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      TransactionPage(),
      ViewUserPage(),
      ProfilePage(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home-icon.svg'), label: "Home"
              // title: Text('Home'),
              ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/transactions-icon.svg'),
              label: 'Transactions'
              // title: Text('Transactions'),
              ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/settings-icon.svg'),
              label: 'Settings'
              // title: Text('Settings'),
              ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/smiley-icon.svg'), label: 'Account'
              // title: Text('Account'),
              ),
        ],
      ),
    );
  }
}

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}

class ViewUserPage extends StatefulWidget {
  const ViewUserPage({Key? key}) : super(key: key);

  @override
  State<ViewUserPage> createState() => _ViewUserPageState();
}

class _ViewUserPageState extends State<ViewUserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ViewAddedUsers(),
          ],
        ),
      ),
    );
  }
}
