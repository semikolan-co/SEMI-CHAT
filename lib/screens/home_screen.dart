// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:semi_chat/constants/colors.dart';
import 'package:semi_chat/pages/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // =
  // TabController(length: 4, vsync: this, initialIndex: 0);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text('SEMI-CHAT'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search',
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
                    'New Group',
                    style: const TextStyle(fontSize: 20),
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(
                    'New Broadcast',
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
        bottom: TabBar(tabs: const [
          Tab(
            icon: Icon(Icons.camera),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          ),
        ], controller: _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text(
            'lorem',
            style: const TextStyle(fontSize: 20),
          ),
          ChatPage(),
          Text(
            'lorem',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'lorem',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
       
    );
  }
}
