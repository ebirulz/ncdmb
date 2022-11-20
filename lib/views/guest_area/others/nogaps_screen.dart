import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../utils/color_data.dart';

class NOGAPSSCREEN extends StatefulWidget {
  const NOGAPSSCREEN({Key? key}) : super(key: key);

  @override
  State<NOGAPSSCREEN> createState() => _NOGAPSSCREENState();
}

class _NOGAPSSCREENState extends State<NOGAPSSCREEN> {
  String pdfURL = 'https://ncdmb.gov.ng/images/nogaps/NOGAPSBooklet.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: backGroundColor,
          title:const Text('Nigerian Oil and Gas Park Scheme', style: TextStyle(color: Colors.black, fontSize: 15),),
      ),
      body: SfPdfViewer.network(pdfURL),
    );
  }
}
