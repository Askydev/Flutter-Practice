import 'package:chat_app_ui/models/usermodel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
