import 'package:flutter/material.dart';
import 'package:ncdmb/utils/color_data.dart';

class MessageCentreScreen extends StatefulWidget {
  const MessageCentreScreen({Key? key}) : super(key: key);

  @override
  State<MessageCentreScreen> createState() => _MessageCentreScreenState();
}

class _MessageCentreScreenState extends State<MessageCentreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Message Centre', style: TextStyle(color: Colors.black, fontSize: 18),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Integration in Progress', style: TextStyle(fontSize: 16, color: defaultGreen, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
