import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../utils/color_data.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
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
          title: const Text('Budget Portal', style: TextStyle(color: Colors.black, fontSize: 18),),
        ),
        body: Stack(
          children: [
            WebView(
              gestureNavigationEnabled: true,
              initialUrl: 'https://budget.ncdmb.gov.ng/',
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
