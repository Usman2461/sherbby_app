import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants/colors.dart';
import '../../models/chatMessageModel.dart';
import '../../widgets/buttonChatWidget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController chatController = TextEditingController();

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(
        messageContent: "ehhhh, doing OK.",
        messageType: "receiver",
        isVoice: true),
    ChatMessage(messageContent: "Hey Carlo?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Text(
          "SHERBBY",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 0,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height -
                      kBottomNavigationBarHeight -
                      200,
                  child: ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return chat_bubble_widget2(index);
                      } else {
                        return chat_bubble_widget(index);
                      }
                    },
                  ),
                ),
                Container(
                  color: Colors.lightBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: "write a message...",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              fillColor: Colors.white,
                              filled: true,
                              suffixIcon: Icon(
                                Icons.send,
                                color: Colors.black,
                              )),
                        )),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.lightBlue,
            height: 80,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(child: Icon(Icons.person, color: Colors.white,), backgroundColor: Colors.lightBlue,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Hety",
                    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 24.0),
                  ),
                ),
                Text("(bloquer un utillisateur)", style: TextStyle(color: Colors.white),)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chat_bubble_widget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(backgroundColor: Colors.lightBlue, child: Icon(Icons.person, color: Colors.white,), ),
          SizedBox(width: 10.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(messages[index].messageContent, style: TextStyle(color: Colors.grey),),
              Text("2 Oct 2020 16:38:28", style: TextStyle(color: Colors.grey),)
            ],
          ),


        ],
      ),
    );
  }
  Widget chat_bubble_widget2(int index) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 260,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(20.0)),
                  padding: EdgeInsets.all(10.0),
                  width: 200,child: Text(messages[index].messageContent, style: TextStyle(color: Colors.white),) ,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2 Oct 2020 16:38:28", style: TextStyle(color: Colors.grey),),
                )
              ],
            ),
            SizedBox(width: 10.0,),
            CircleAvatar(backgroundColor: Colors.lightBlue, child: Icon(Icons.person, color: Colors.white,), )
          ],
        ),
      ),
    );
  }

}
