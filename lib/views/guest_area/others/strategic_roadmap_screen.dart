import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../utils/color_data.dart';

class StrategicRoadMap extends StatefulWidget {
  const StrategicRoadMap({Key? key}) : super(key: key);

  @override
  State<StrategicRoadMap> createState() => _StrategicRoadMapState();
}

class _StrategicRoadMapState extends State<StrategicRoadMap> {

  String pdfURL = 'https://ncdmb.gov.ng/images/Downloads/10-Year-Strategic-Roadmap.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: backGroundColor,
        title:const Text('Strategic Roadmap', style: TextStyle(color: Colors.black, fontSize: 15),),
      ),
      body: SfPdfViewer.network(pdfURL),
    );
  }
}