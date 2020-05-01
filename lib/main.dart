import 'package:flutter/material.dart';
import 'package:flutterwhatsappui/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.blueGrey
      ),
      home: WhatsAppHome(),
    );
  }
}
