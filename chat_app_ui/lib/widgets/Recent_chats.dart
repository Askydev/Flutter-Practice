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
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                chat.sender.name,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                chat.text,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        chat.time
                      ),
                    ],
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
