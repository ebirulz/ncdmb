import 'package:flutter/material.dart';
import 'package:ncdmb/utils/color_data.dart';
import 'package:ncdmb/views/guest_area/events/tabs/event_details.dart';

import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class VerifyDialog extends StatefulWidget {
  const VerifyDialog({Key? key}) : super(key: key);

  @override
  State<VerifyDialog> createState() => _VerifyDialogState();
}

class _VerifyDialogState extends State<VerifyDialog> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FetchPixels.getPixelHeight(20))),
      backgroundColor: backGroundColor,
      content: Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getVerSpace(FetchPixels.getPixelHeight(20)),
              getSvgImage("group.svg"),
              getVerSpace(FetchPixels.getPixelHeight(30)),
              getCustomFont("Event Status", 22, Colors.black, 1,
                  fontWeight: FontWeight.w900),
              getVerSpace(FetchPixels.getPixelHeight(10)),
              getMultilineCustomFont(
                  "Your details has been successfully registered!",
                  16,
                  Colors.black,
                  fontWeight: FontWeight.w400,

                  textAlign: TextAlign.center,
                  txtHeight:1.3),
              getVerSpace(FetchPixels.getPixelHeight(30)),
              getButton(context, defaultGreen, "Ok", Colors.white, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventDetailsScreen()));
              }, 18,
                  weight: FontWeight.w600,
                  buttonHeight: FetchPixels.getPixelHeight(60),
                  borderRadius:
                  BorderRadius.circular(FetchPixels.getPixelHeight(15))),
              getVerSpace(FetchPixels.getPixelHeight(20)),
            ],
          );
        },
      ),
    );
  }
}
