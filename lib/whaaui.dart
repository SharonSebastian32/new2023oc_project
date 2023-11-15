
import 'package:flutter/material.dart';
class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(Icons.search),
            PopupMenuButton<String>(
              onSelected: (value) {
                // Handle menu item selection
              },
              itemBuilder: (context) {
                return [
                  'New Group',
                  'New Broadcast',
                  'Linked Devices',
                  'Starred Messages',
                  'Settings',
                ].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          backgroundColor: Colors.black,
          foregroundColor: Colors.blue,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt_rounded,
                ),
              ),
              Tab(
                child: Text('CHATS', style: TextStyle(color: Colors.blue)),
              ),
              Tab(
                child: Text('STATUS', style: TextStyle(color: Colors.blue)),
              ),
              Tab(
                child: Text('CALLS', style: TextStyle(color: Colors.blue)),
              ),
            ],
            labelColor: Colors.blue,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Chats content')),
            ChatsTab(),
            Center(child: Text('Status content')),
            Center(child: Text('Calls content')),
          ],
        ),

      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Replace with actual chat widgets or use your SingleChatWidget here
        ],
      ),
    );
  }
}
