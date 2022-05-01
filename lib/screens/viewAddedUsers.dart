import 'package:flutter/material.dart';
import 'package:global_pay_deaf/utilities/themeStyles.dart';
import 'package:global_pay_deaf/widgets/addUser.dart';
import 'package:global_pay_deaf/widgets/transactionCard.dart';
import 'package:global_pay_deaf/widgets/viewUserCard.dart';

class ViewAddedUsers extends StatefulWidget {
  @override
  _ViewAddedUsersState createState() => _ViewAddedUsersState();
}

class _ViewAddedUsersState extends State<ViewAddedUsers> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Added Users', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                ViewUserCard(
                    color: Colors.amber,
                    letter: "A",
                    paypalAddress: "aminda@gmail.com",
                    userName: "aminda"),
                ViewUserCard(
                    color: Colors.pink,
                    letter: "B",
                    paypalAddress: "binhg@gmail.com",
                    userName: "binhg")
              ],
            ),
          ),
          AddUser()
        ],
      ),
    );
  }
}
