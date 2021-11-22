// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:semi_chat/CustomUi/custom_card.dart';
import 'package:semi_chat/Model/chat_model.dart';
import 'package:semi_chat/constants/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  static const routeName = '/chatpage';
  @override
  Widget build(BuildContext context) {
    List<ChatModel> chats = [
      ChatModel(
          name: 'ankur',
          icon: 'icon',
          isGroup: false,
          time: '10:20',
          currentMessage: 'hi ankur'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'satya',
          icon: 'icon',
          isGroup: false,
          time: '10:20',
          currentMessage: 'hi ankur'),
      ChatModel(
          name: 'satya',
          icon: 'icon',
          isGroup: false,
          time: '10:20',
          currentMessage: 'hi ankur'),
      ChatModel(
          name: 'semikolan',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'hi everyone'),
      ChatModel(
          name: 'satya',
          icon: 'icon',
          isGroup: true,
          time: '10:20',
          currentMessage: 'ankur'),
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (ctx, i) => CustomCard(
                chatModel: chats[i],
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
        backgroundColor: MyColors.primaryColor,
      ),
    );
  }
}
