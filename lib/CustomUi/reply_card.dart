// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:semi_chat/constants/colors.dart';

class ReplyMessageCard extends StatelessWidget {
  const ReplyMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 55,
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            // color: Color(0xffdcf8c6),
             color:  Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 40, top: 5, bottom: 20),
                  child: Text(
                    "hey we are open source kkkkkkkkkkkkkkkkkkkkkkkkorganisatiohhhhhhhhhhhhhhhhhhn",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        '10:00 ',
                        style: const TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.done_all),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
