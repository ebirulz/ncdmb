import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncdmb/widgets/svg_image.dart';

import '../utils/color_data.dart';
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

GestureDetector contentListItem(
    BuildContext context,{Function? function, String? title, String? desc, String? img}) {
  return GestureDetector(
    onTap: () {
      function!();
    },
    child: Container(
      height: FetchPixels.getPixelHeight(120),
      margin: EdgeInsets.only(
          bottom: FetchPixels.getPixelHeight(20),
          left: FetchPixels.getDefaultHorSpace(context),
          right: FetchPixels.getDefaultHorSpace(context)),
      padding: EdgeInsets.symmetric(
          vertical: FetchPixels.getPixelHeight(16),
          horizontal: FetchPixels.getPixelWidth(16)),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0.0, 4.0)),
          ],
          borderRadius: BorderRadius.circular(FetchPixels.getPixelHeight(12))),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  height: FetchPixels.getPixelHeight(100),
                  width: FetchPixels.getPixelHeight(100),
                  decoration: BoxDecoration(
                    image: getDecorationAssetImage(
                        context, img!,fit: BoxFit.cover),
                  ),
                ),
                getHorSpace(FetchPixels.getPixelWidth(16)),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 1,child: getHorSpace(0),),
                      getCustomFont(
                        title!, 16, defaultGreen, 2,
                        fontWeight: FontWeight.w900,),
                      getVerSpace(FetchPixels.getPixelHeight(12)),
                      getCustomFont(
                        desc!,
                        15,
                        textColor,
                        2,
                        fontWeight: FontWeight.w400,
                      ),
                      getVerSpace(FetchPixels.getPixelHeight(12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget userListItem(
    BuildContext context,{String? title, String? position, String? imgUrl}) {
  return Container(
    height: FetchPixels.getPixelHeight(120),
    margin: EdgeInsets.only(
        bottom: FetchPixels.getPixelHeight(10),
        ),
    padding: EdgeInsets.symmetric(
        vertical: FetchPixels.getPixelHeight(16),
        horizontal: FetchPixels.getPixelWidth(16)),
    decoration: BoxDecoration(
        color: Colors.white,
      border: Border(
        bottom: BorderSide(width: 1.5, color: Colors.grey.withOpacity(0.3)),
      ),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Container(
                height: FetchPixels.getPixelHeight(100),
                width: FetchPixels.getPixelHeight(100),
                decoration: BoxDecoration(
                  image: getDecorationUrlImage(
                      context, imgUrl!,fit: BoxFit.cover),
                ),
              ),
              getHorSpace(FetchPixels.getPixelWidth(16)),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1,child: getHorSpace(0),),
                    getCustomFont(
                      title!, 16, defaultGreen, 2,
                      fontWeight: FontWeight.w900,),
                    getVerSpace(FetchPixels.getPixelHeight(12)),
                    getCustomFont(
                      position!,
                      15,
                      textColor,
                      2,
                      fontWeight: FontWeight.w400,
                    ),
                    getVerSpace(FetchPixels.getPixelHeight(12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget getDefaultTextFiledWithLabel(BuildContext context, String s,
    TextEditingController textEditingController, Color fontColor,
    {bool withprefix = false,
      bool withSufix = false,
      bool minLines = false,
      EdgeInsetsGeometry margin = EdgeInsets.zero,
      bool isPass = false,
      bool isEnable = true,
      double? height,
      double? imageHeight,
      double? imageWidth,
      String? image,
      String? suffiximage,
      required Function function,
      Function? imagefunction,
      AlignmentGeometry alignmentGeometry = Alignment.centerLeft}) {
  FocusNode myFocusNode = FocusNode();
  return StatefulBuilder(
    builder: (context, setState) {
      final mqData = MediaQuery.of(context);
      final mqDataNew =
      mqData.copyWith(textScaleFactor: FetchPixels.getTextScale());

      return AbsorbPointer(
        absorbing: isEnable,
        child: Container(
          height: height,
          margin: margin,
          alignment: alignmentGeometry,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0.0, 4.0)),
              ],
              borderRadius:
              BorderRadius.circular(FetchPixels.getPixelHeight(12))),
          child: Focus(
              onFocusChange: (hasFocus) {
                if (hasFocus) {
                  setState(() {
                    myFocusNode.canRequestFocus = true;
                  });
                } else {
                  setState(() {
                    myFocusNode.canRequestFocus = false;
                  });
                }
              },
              child: MediaQuery(
                data: mqDataNew,
                child: Row(
                  children: [
                    (!withprefix)
                        ? getHorSpace(FetchPixels.getPixelWidth(16))
                        : Padding(
                      padding: EdgeInsets.only(
                          right: FetchPixels.getPixelWidth(12),
                          left: FetchPixels.getPixelWidth(18)),
                      child: getSvgImage(image!,
                          height: FetchPixels.getPixelHeight(24),
                          width: FetchPixels.getPixelHeight(24)),
                    ),
                    Expanded(
                      child: TextField(
                        maxLines: (minLines) ? null : 1,
                        controller: textEditingController,
                        obscuringCharacter: "*",
                        autofocus: false,
                        focusNode: myFocusNode,
                        obscureText: isPass,
                        showCursor: false,
                        onTap: () {
                          function();
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: FetchPixels.getPixelHeight(16),
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: s,
                            hintStyle: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: FetchPixels.getPixelHeight(16),
                            )),
                      ),
                    ),
                    (!withSufix)
                        ? getHorSpace(FetchPixels.getPixelWidth(16))
                        : Padding(
                      padding: EdgeInsets.only(
                          right: FetchPixels.getPixelWidth(18),
                          left: FetchPixels.getPixelWidth(12)),
                      child: InkWell(
                        onTap: () {
                          if (imagefunction != null) {
                            imagefunction();
                          }
                        },
                        child: getSvgImage(suffiximage!,
                            height: FetchPixels.getPixelHeight(24),
                            width: FetchPixels.getPixelHeight(24)),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      );
    },
  );
}

Widget getButton(BuildContext context, Color bgColor, String text,
    Color textColor, Function function, double fontsize,
    {bool isBorder = false,
      EdgeInsetsGeometry? insetsGeometry,
      borderColor = Colors.transparent,
      FontWeight weight = FontWeight.bold,
      bool isIcon = false,
      String? image,
      Color? imageColor,
      double? imageWidth,
      double? imageHeight,
      bool smallFont = false,
      double? buttonHeight,
      double? buttonWidth,
      List<BoxShadow> boxShadow = const [],
      EdgeInsetsGeometry? insetsGeometrypadding,
      BorderRadius? borderRadius,
      double? borderWidth}) {
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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (isIcon) ? getSvgImage(image!) : getHorSpace(0),
          (isIcon)
              ? getHorSpace(FetchPixels.getPixelWidth(10))
              : getHorSpace(0),
          getCustomFont(
            text,
            fontsize,
            textColor,
            1,
            textAlign: TextAlign.center,
            fontWeight: weight,
          )
        ],
      ),
    ),
  );
}