import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncdmb/widgets/svg_image.dart';

import '../utils/fetch_pixels.dart';
import '../utils/spacing.dart';

Widget gettoolbarMenu(BuildContext context, String image, Function function,
    {bool istext = false,
      double? fontsize,
      String? title,
      Color? textColor,
      FontWeight? weight,
      String fontFamily = "",
      bool isrightimage = false,
      String? rightimage,
      Function? rightFunction}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
          onTap: () {
            function();
          },
          child: getSvgImage(image,
              height: FetchPixels.getPixelHeight(34),
              width: FetchPixels.getPixelHeight(34))),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          child: (istext)
              ? getCustomFont(title!, fontsize!, textColor!, 1,
              fontWeight: weight!, fontFamily: fontFamily)
              : null,
        ),
      ),
      (isrightimage)
          ? InkWell(
          onTap: () {
            rightFunction!();
          },
          child: getSvgImage(rightimage!,
              height: FetchPixels.getPixelHeight(24),
              width: FetchPixels.getPixelHeight(24)))
          : Container(),
    ],
  );
}

Widget getHorSpace(double verSpace) {
  return SizedBox(
    width: verSpace,
  );
}

AppBar getToolBar(Function function, {Widget? title, bool leading = true}) {
  return AppBar(
    toolbarHeight: 73.h,
    title: title,
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: leading == true
        ? getPaddingWidget(
        EdgeInsets.only(top: 26.h, bottom: 23.h),
        GestureDetector(
            onTap: () {
              function();
            },
            child:
            getSvgImage("arrow_back.svg", height: 24.h, width: 24.h)))
        : null,
  );
}

Widget getButtonWithIcon(BuildContext context, Color bgColor, String text,
    Color textColor, Function function, double fontsize,
    {bool isBorder = false,
      EdgeInsetsGeometry? insetsGeometry,
      borderColor = Colors.transparent,
      FontWeight weight = FontWeight.bold,
      bool prefixIcon = false,
      bool sufixIcon = false,
      String? prefixImage,
      String? suffixImage,
      Color? imageColor,
      double? imageWidth,
      double? imageHeight,
      bool smallFont = false,
      double? buttonHeight,
      double? buttonWidth,
      List<BoxShadow> boxShadow = const [],
      EdgeInsetsGeometry? insetsGeometrypadding,
      BorderRadius? borderRadius,
      double? borderWidth,
      String fontFamily = "Regular"}) {
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      padding: insetsGeometrypadding,
      width: buttonWidth,
      height: buttonHeight,
      decoration: getButtonDecoration(
        bgColor,
        borderRadius: borderRadius,
        shadow: boxShadow,
        border: (isBorder)
            ? Border.all(color: borderColor, width: borderWidth!)
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              getHorSpace(FetchPixels.getPixelWidth(18)),
              (prefixIcon) ? getSvgImage(prefixImage!) : getHorSpace(0),
              (prefixIcon)
                  ? getHorSpace(FetchPixels.getPixelWidth(12))
                  : getHorSpace(0),
              getCustomFont(text, fontsize, textColor, 1,
                  textAlign: TextAlign.center,
                  fontWeight: weight,
                  fontFamily: fontFamily)
            ],
          ),
          Row(
            children: [
              (sufixIcon) ? getSvgImage(suffixImage!) : getHorSpace(0),
              (sufixIcon)
                  ? getHorSpace(FetchPixels.getPixelWidth(18))
                  : getHorSpace(0),
            ],
          )
        ],
      ),
    ),
  );
}

BoxDecoration getButtonDecoration(Color bgColor,
    {BorderRadius? borderRadius,
      Border? border,
      List<BoxShadow> shadow = const [],
      DecorationImage? image}) {
  return BoxDecoration(
      color: bgColor,
      borderRadius: borderRadius,
      border: border,
      boxShadow: shadow,
      image: image);
}