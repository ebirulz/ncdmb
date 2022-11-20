import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../widgets/svg_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 8), (){
      Navigator.pushNamed(context,'/walkthrough_screen',);
    }
    );
  }

  void backClick() {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: buildLogo(),
        ),
        onWillPop: () async {
          backClick();
          return false;
        });
  }

  Container buildLogo() {
    return Container(
        color: defaultGreen,
        child: Center(
            child: getSvgImageWithSize(
                context,
                "ncdmb_welcome.svg",
                FetchPixels.getPixelHeight(400),
                FetchPixels.getPixelHeight(400)
            )
        )
    );
  }
}
