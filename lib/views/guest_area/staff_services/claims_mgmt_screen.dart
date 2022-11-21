import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';

class ClaimsManagementScreen extends StatefulWidget {
  const ClaimsManagementScreen({Key? key}) : super(key: key);

  @override
  State<ClaimsManagementScreen> createState() => _ClaimsManagementScreenState();
}

class _ClaimsManagementScreenState extends State<ClaimsManagementScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Claims Management', style: TextStyle(color: Colors.black, fontSize: 18),),
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
