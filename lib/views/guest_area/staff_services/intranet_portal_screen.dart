import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../utils/color_data.dart';

class IntranetPortalScreen extends StatefulWidget {
  const IntranetPortalScreen({Key? key}) : super(key: key);

  @override
  State<IntranetPortalScreen> createState() => _IntranetPortalScreenState();
}

class _IntranetPortalScreenState extends State<IntranetPortalScreen> {
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
          title: const Text('Intranet Portal', style: TextStyle(color: Colors.black, fontSize: 18),),
        ),
        body: Stack(
          children: [
            WebView(
              gestureNavigationEnabled: true,
              initialUrl: 'https://ncdmb.sharepoint.com/sites/ncdmb-govng-site/en-US',
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
