// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('semi-chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {},
          ),
          PopupMenuButton<String>(itemBuilder: (BuildContext ctx) {
            return [
              PopupMenuItem(
                child: Text(
                  'New Group',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'newgroup',
              ),
              PopupMenuItem(
                child: Text(
                  'New Broadcast',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'broadcast',
              ),
              PopupMenuItem(
                child: Text(
                  'Settings',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'settings',
              ),
            ];
          })
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
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
