import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../utils/color_data.dart';

class MarineVesselReport extends StatefulWidget {
  const MarineVesselReport({Key? key}) : super(key: key);

  @override
  State<MarineVesselReport> createState() => _MarineVesselReportState();
}

class _MarineVesselReportState extends State<MarineVesselReport> {
  String pdfURL = 'https://ncdmb.gov.ng/images/MARINEVESSEL/June2021mvr.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: backGroundColor,
        title:const Text('Marine Vessel Report', style: TextStyle(color: Colors.black, fontSize: 15),),
      ),
      body: SfPdfViewer.network(pdfURL),
    );
  }
}
