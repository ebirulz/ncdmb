import 'package:flutter/material.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    double defSpace = FetchPixels.getDefaultHorSpace(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: defSpace);
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backGroundColor,
          body: SafeArea(
            child: buildPage(edgeInsets, context, defSpace),
          ),
        ),
        onWillPop: () async {
          Constant.backToPrev(context);
          return false;
        });
  }

  ListView buildPage(EdgeInsets edgeInsets, BuildContext context,
      double defSpace) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(
            edgeInsets,
            gettoolbarMenu(context, "back.svg", () {
              Constant.backToPrev(context);
            },
                title: "Detail",
                weight: FontWeight.w900,
                textColor: Colors.black,
                fontsize: 24,
                istext: true,
                isrightimage: true,
                rightimage: "more.svg",
                rightFunction: () {})),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(edgeInsets, eventImage()),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(edgeInsets, eventDescription(context)),
        getVerSpace(FetchPixels.getPixelHeight(29)),
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

                ],
              )
            ],
          ),
        )
        // packageList(context)
      ],
    );
  }
  Widget buildToolbar(BuildContext context) {
    return getPaddingWidget(
      EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
      gettoolbarMenu(context, "back.svg", () {
        Constant.backToPrev(context);
      },
          title: "Events Details",
          fontsize: 24,
          weight: FontWeight.w900,
          textColor: Colors.black,
          istext: true),
    );
  }

  Hero eventImage() {
    return Hero(
        tag: 'event image',
        child: getCircularImage(context, FetchPixels.getPixelWidth(374),
            FetchPixels.getPixelHeight(225), FetchPixels.getPixelHeight(16),
            'barber.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont("NCDMB To Host Africa Local Content Investment Forum", 24, defaultGreen, 2,
            fontWeight: FontWeight.w900),
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getMultilineCustomFont(
            "Speaking ahead of the event, the Executive Secretary NCDMB, Engr. Simbi Kesiye Wabote stated that the Africa Local Content Investment Forum would seek to elevate Africa’s indigenous oil producers and national oil companies as the next generation of project producers involved in equity financing of exploration and field development activities.",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }

}
