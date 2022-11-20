import 'package:flutter/material.dart';

import '../../models/notification_model.dart';
import '../../utils/color_data.dart';
import '../../utils/constant.dart';
import '../../utils/dataFile.dart';
import '../../utils/fetch_pixels.dart';
import '../../utils/spacing.dart';
import '../../widgets/svg_image.dart';
import '../../widgets/widget_utils.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<ModelNotification> notificationLists = DataFile.notificationList;

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backGroundColor,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: FetchPixels.getPixelWidth(20)),
              child: Column(
                children: [
                  getVerSpace(FetchPixels.getPixelHeight(20)),
                  buildSearchWidget(context),
                  notificationLists.isEmpty
                      ? nullListView(context)
                      : notificationList()
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          Constant.backToPrev(context);
          return false;
        });
  }

  Widget buildSearchWidget(BuildContext context) {
    return gettoolbarMenu(context, "back.svg", () {
      Constant.backToPrev(context);
    },
        istext: true,
        title: "Notification Center",
        weight: FontWeight.w900,
        fontsize: 24,
        textColor: Colors.black);
  }

  Expanded notificationList() {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        padding: EdgeInsets.only(top: FetchPixels.getPixelHeight(30)),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        itemCount: notificationLists.length,
        itemBuilder: (context, index) {
          ModelNotification modelNotification = notificationLists[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              index == 0 || index == 2
                  ? getCustomFont(
                      modelNotification.date ?? '',
                      16,
                      Colors.black,
                      1,
                      fontWeight: FontWeight.w400,
                    )
                  : Container(),
              getVerSpace(FetchPixels.getPixelHeight(20)),
              Container(
                margin: EdgeInsets.only(bottom: FetchPixels.getPixelHeight(20)),
                padding: EdgeInsets.only(
                    top: FetchPixels.getPixelHeight(20),
                    bottom: FetchPixels.getPixelHeight(20),
                    right: FetchPixels.getPixelWidth(20),
                    left: FetchPixels.getPixelWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(FetchPixels.getPixelHeight(12)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0.0, 4.0)),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: FetchPixels.getPixelHeight(50),
                      width: FetchPixels.getPixelHeight(50),
                      decoration: BoxDecoration(
                          color: const Color(0xFFE4ECFF),
                          borderRadius: BorderRadius.circular(
                              FetchPixels.getPixelHeight(12))),
                      padding: EdgeInsets.all(FetchPixels.getPixelHeight(13)),
                      child: getSvgImage("clock.svg"),
                    ),
                    getHorSpace(FetchPixels.getPixelWidth(14)),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              getCustomFont(
                                modelNotification.name ?? "",
                                16,
                                Colors.black,
                                1,
                                fontWeight: FontWeight.w900,
                              ),
                              getCustomFont(modelNotification.time ?? "", 14,
                                  textColor, 1,
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                          getVerSpace(FetchPixels.getPixelHeight(7)),
                          getCustomFont(
                            modelNotification.description ?? "",
                            16,
                            Colors.black,
                            2,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Expanded nullListView(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: FetchPixels.getPixelHeight(124),
          width: FetchPixels.getPixelHeight(124),
          decoration: BoxDecoration(
            image: getDecorationAssetImage(context, "bell.png"),
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(40)),
        getCustomFont("No Notifications Yet!", 20, Colors.black, 1,
            fontWeight: FontWeight.w900),
        getVerSpace(FetchPixels.getPixelHeight(10)),
        getCustomFont(
          "We’ll notify you when something arrives.",
          16,
          Colors.black,
          1,
          fontWeight: FontWeight.w400,
        )
      ],
    ));
  }
}
