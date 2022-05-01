import 'package:flutter/material.dart';
import 'package:global_pay_deaf/login_page.dart';

class AddUser extends StatefulWidget {
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32.0,
      left: 16.0,
      right: 16.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Container(
          height: 44.0,
          width: 345.0,
          child: Center(
            child: Text(
              'Add a New User',
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xffe8e8e9),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
