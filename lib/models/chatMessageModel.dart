import 'package:flutter/cupertino.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  bool isVoice=false;
  ChatMessage({required this.messageContent, required this.messageType,this.isVoice=false});
}