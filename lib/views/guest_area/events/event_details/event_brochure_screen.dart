import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../utils/color_data.dart';

class EventBrochureScreen extends StatefulWidget {
  const EventBrochureScreen({Key? key}) : super(key: key);

  @override
  State<EventBrochureScreen> createState() => _EventBrochureScreenState();
}

class _EventBrochureScreenState extends State<EventBrochureScreen> {
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
          title: const Text('Event Brochure', style: TextStyle(color: Colors.black, fontSize: 18),),
        ),
        body: Stack(
          children: [
            WebView(
              gestureNavigationEnabled: true,
              initialUrl: 'https://www.pncnigeria.com/forms/download-event-brochure/',
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
