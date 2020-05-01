import 'package:flutter/material.dart';
import 'package:flutterwhatsappui/pages/calls.dart';
import 'package:flutterwhatsappui/pages/camera.dart';
import 'package:flutterwhatsappui/pages/chat.dart';
import 'package:flutterwhatsappui/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(initialIndex: 1,length: 4,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera)),
            Tab(text: "CHAT",),
            Tab(text: "CALL",),
            Tab(text: "STATUS",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CAMERA(),
          CHAT(),
          CALLS(),
          STATUS()
        ],
      ),
    );
  }
}
