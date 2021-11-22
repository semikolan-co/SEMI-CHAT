// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:semi_chat/CustomUi/custom_card.dart';
import 'package:semi_chat/constants/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  static const routeName = '/chatpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
        CustomCard(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
        backgroundColor: MyColors.primaryColor,
      ),
    );
  }
}
