import 'package:contacts_service/contacts_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/models/ChatMessage.dart';
import 'package:intl/intl.dart';

class Chat {
  final String lastMessage, image, time, groupID, groupName;
  Chat({
    this.groupID = '',
    this.groupName = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
  });

  factory Chat.fromMessage(ChatMessage message) {
    int timeStamp = int.parse(message.timeStamp);
    var dt = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    var d12 = DateFormat('hh:mm a').format(dt); // 12/31/2000, 10:00 PM

    return Chat(
        groupID: message.groupID,
        groupName: message.groupName,
        lastMessage: message.text,
        image: "assets/images/user.png",
        time: d12);
  }

  // factory Chat.fromRTDB(Map<String, dynamic> data) {
  //   int timeStamp = int.parse(data["timestamp"]);
  //   var dt = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  //   var d12 = DateFormat('hh:mm a').format(dt); // 12/31/2000, 10:00 PM

  //   return Chat(
  //       groupID: data["id"],
  //       groupName: data["name"],
  //       lastMessage: data["text"],
  //       image: "assets/images/user.png",
  //       time: d12);
  // }
}
