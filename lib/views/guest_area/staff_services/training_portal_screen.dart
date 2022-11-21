import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../utils/color_data.dart';

class TrainingPortalScreen extends StatefulWidget {
  const TrainingPortalScreen({Key? key}) : super(key: key);

  @override
  State<TrainingPortalScreen> createState() => _TrainingPortalScreenState();
}

class _TrainingPortalScreenState extends State<TrainingPortalScreen> {
  bool isLoading=true;
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    //if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backGroundColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Training Portal', style: TextStyle(color: Colors.black, fontSize: 18),),
        ),
        body: Stack(
          children: [
            WebView(
              gestureNavigationEnabled: true,
              initialUrl: 'http://trainings.ncdmb.gov.ng/login',
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading ? const Center( child: CircularProgressIndicator(color: Color(0xFF235A45)),)
                : Stack(),
          ],
        )

    );
  }
}
