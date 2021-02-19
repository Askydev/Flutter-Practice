import 'package:chat_app_ui/models/message_model.dart';
import 'package:flutter/material.dart';
class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index){
              final Message chat = chats[index];
              return Row(
                children: [
                  Text(
                      chat.sender.name,
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
