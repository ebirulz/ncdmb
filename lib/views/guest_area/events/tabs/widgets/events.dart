import 'package:flutter/material.dart';

import '../../../../../utils/color_data.dart';
import '../../../../../utils/fetch_pixels.dart';
import '../../../../../utils/spacing.dart';
import '../../../../../widgets/svg_image.dart';
import '../../../../../widgets/widget_utils.dart';

GestureDetector buildEventListItem(
    BuildContext context,{Function? function, String? eventName, String? desc, String? date, String? img}) {
  return GestureDetector(
    onTap: () {
      function!();
    },
    child: Container(
      height: FetchPixels.getPixelHeight(161),
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
                  height: FetchPixels.getPixelHeight(115),
                  width: FetchPixels.getPixelHeight(115),
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
                          eventName!, 16, defaultGreen, 2,
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
                      getCustomFont(
                        'Date ${date!}',
                        14,
                        Colors.green,
                        1,
                        fontWeight: FontWeight.bold,
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

GestureDetector buildPastEventListItem(
    BuildContext context,{Function? function, String? eventName, String? desc, String? date, String? img}) {
  return GestureDetector(
    onTap: () {
      function!();
    },
    child: Container(
      height: FetchPixels.getPixelHeight(161),
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
                  height: FetchPixels.getPixelHeight(115),
                  width: FetchPixels.getPixelHeight(115),
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
                        eventName!, 16, defaultGreen, 2,
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
                      getCustomFont(
                        date!,
                        14,
                        Colors.red,
                        1,
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

Widget speakersList(BuildContext context, EdgeInsets edgeInsets,{String? speakerName, String? speakerImage}) {
  return getPaddingWidget(
    edgeInsets,
    Container(
      padding: EdgeInsets.only(
          top: FetchPixels.getPixelHeight(16),
          bottom: FetchPixels.getPixelHeight(16),
          left: FetchPixels.getPixelWidth(16),
          right: FetchPixels.getPixelWidth(16)),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getVerSpace(FetchPixels.getPixelHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: FetchPixels.getPixelHeight(42),
                    width: FetchPixels.getPixelHeight(42),
                    decoration: BoxDecoration(
                        image: getDecorationAssetImage(
                            context, speakerImage ?? "booking_owner.png")),
                  ),
                  getHorSpace(FetchPixels.getPixelWidth(9)),
                  getCustomFont(
                    speakerName!,
                    14,
                    textColor,
                    1,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Container(
                height: FetchPixels.getPixelHeight(42),
                width: FetchPixels.getPixelHeight(42),
                decoration: BoxDecoration(
                    image: getDecorationAssetImage(context, "call_bg.png")),
              ),
            ],
          )
        ],
      ),
    ),
  );
}