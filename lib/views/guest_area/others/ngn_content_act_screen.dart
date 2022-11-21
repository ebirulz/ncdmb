import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../utils/color_data.dart';

class NGNContentActScreen extends StatefulWidget {
  const NGNContentActScreen({Key? key}) : super(key: key);

  @override
  State<NGNContentActScreen> createState() => _NGNContentActScreenState();
}

class _NGNContentActScreenState extends State<NGNContentActScreen> {
  String pdfURL = 'https://ncdmb.gov.ng/nc-act.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: backGroundColor,
        title:const Text('Nigerian Content Act', style: TextStyle(color: Colors.black, fontSize: 15),),
      ),
      body: SfPdfViewer.network(pdfURL),
    );
  }
}
