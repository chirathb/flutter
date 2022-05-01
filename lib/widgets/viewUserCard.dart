import 'package:flutter/material.dart';
import 'package:global_pay_deaf/screens/transacationPage.dart';
import 'package:global_pay_deaf/utilities/themeStyles.dart';

class ViewUserCard extends StatefulWidget {
  final String userName;
  final String paypalAddress;
  final String letter;
  final Color color;
  ViewUserCard({
    required this.color,
    required this.letter,
    required this.paypalAddress,
    required this.userName,
  });
  @override
  _ViewUserCardState createState() => _ViewUserCardState();
}

class _ViewUserCardState extends State<ViewUserCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => TransactionPage(
          //       color: widget.color,
          //       userName: widget.userName,
          //       paypalAddress: widget.paypalAddress,
          //       letter: widget.letter,
          //     ),
          //   ),
          // );
        },
        child: Container(
          height: 62.0,
          width: 343.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 44.0,
                        width: 44.0,
                        decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Center(
                          child: Text(
                            widget.letter,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.userName,
                              style: ThemeStyles.otherDetailsPrimary),
                          Text(widget.paypalAddress,
                              style: ThemeStyles.otherDetailsSecondary),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  )
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0.5,
                endIndent: 16.0,
                indent: 16.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
