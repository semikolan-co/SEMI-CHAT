// ignore_for_file: unused_field, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';

import 'package:semi_chat/Model/chat_model.dart';
import 'package:semi_chat/constants/colors.dart';

class IndividualPage extends StatelessWidget {
  IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        leadingWidth: 79,
        leading: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon(Icons.arrow_back),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
              ),
            ),
            CircleAvatar(
              radius: 15,
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chatModel.name,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "last seen at 10:40",
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            tooltip: 'video call',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            tooltip: 'phone call',
            onPressed: () {},
          ),
          PopupMenuButton<int>(
            onSelected: (val) {
              print(val);
            },
            itemBuilder: (BuildContext ctx) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Label Chat',
                    style: const TextStyle(fontSize: 20),
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(
                    'View Contact',
                    style: const TextStyle(fontSize: 20),
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text(
                    'Settings',
                    style: const TextStyle(fontSize: 20),
                  ),
                  value: 3,
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              children: [],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.attach_file,
                                          color: MyColors.primaryColor,
                                          size: 20,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.camera_alt,
                                          color: MyColors.primaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.emoji_emotions,
                                    color: MyColors.primaryColor,
                                  ),
                                  hintText: 'Type a message'),
                            )),
                      ),
                      CircleAvatar(
                        backgroundColor: MyColors.primaryColor,
                        child: const Icon(Icons.send),
                      ),
                    ],
                  ),
                  emojipicker(),
                ],
              ),
            ),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }

  Widget emojipicker() {
    return EmojiPicker(
        rows: 4,
        columns: 7,
        onEmojiSelected: (emoji, category) {
          print(emoji);
        });
  }
}