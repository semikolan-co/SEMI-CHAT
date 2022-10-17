// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:semi_chat/Model/chat_model.dart';
import 'package:semi_chat/constants/colors.dart';
import 'package:semi_chat/pages/individuals_page.dart';

class CustomCard extends StatelessWidget {
  // const CustomCard({Key? key}) : super(key: key);
  // String name;
  // String icon;
  // String time;
  // String message;
  // bool isGroup;
  // CustomCard({
  //   Key? key,
  //   required this.name,
  //   required this.icon,
  //   required this.time,
  //   required this.message,
  //   required this.isGroup,
  // }) : super(key: key);
  ChatModel chatModel;
  CustomCard({
    Key? key,
    required this.chatModel,
  }) : super(key: key);

  // CustomCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: MyColors.primaryColor,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndividualPage(
                      chatModel: chatModel,
                    ))
            // arguments: product.id
            );
      },
      child: Card(
        elevation: 2,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            child: Icon(
              chatModel.isGroup ? Icons.people : Icons.person,
              color: Colors.white,
            ),
            backgroundColor: MyColors.primaryColor,
          ),
          title: Text(
            chatModel.name,
            textScaleFactor: 1.5,
          ),
          subtitle: Row(
            children: [
              const Icon(Icons.done_all),
              SizedBox(
                width: 3,
              ),
              Text(
                chatModel.currentMessage,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          trailing: Text(chatModel.time),
          // selected: true,
        ),
      ),
    );
  }
}
