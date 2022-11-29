import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/events/event_details/event_brochure_screen.dart';
import 'package:ncdmb/views/guest_area/events/event_details/gov_support.dart';
import 'package:ncdmb/views/guest_area/events/event_details/speakers_screen.dart';
import 'package:ncdmb/views/guest_area/events/event_details/sponsors.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';
import 'event_form.dart';

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
    return Scaffold(
      /*floatingActionButton: FloatingActionButton.extended(
        backgroundColor: defaultGreen,
        label: Text('Register'),
        icon: Icon(Iconsax.message_edit),//child widget inside this button
        onPressed: (){
          //task to execute when this button is pressed
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventFormScreen()));
        },
      ),*/
      resizeToAvoidBottomInset: false,
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: buildPage(edgeInsets, context, defSpace),
      ),
    );
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
        getVerSpace(FetchPixels.getPixelHeight(19)),
        getButtonWithIcon(
            context, Colors.white, "Guest Speakers", Colors.black, () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GuestSpeakers()));
        }, 16,
            weight: FontWeight.w900,
            buttonHeight: FetchPixels.getPixelHeight(72),
            borderRadius:
            BorderRadius.circular(FetchPixels.getPixelHeight(12)),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0.0, 4.0)),
            ],
            prefixIcon: false,
            prefixImage: "headset.svg",
            sufixIcon: true,
            suffixImage: "arrow_right.svg"),
        getVerSpace(FetchPixels.getPixelHeight(19)),
        getButtonWithIcon(
            context, Colors.white, "2022 Sponsors", Colors.black, () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Sponsors()));
        }, 16,
            weight: FontWeight.w900,
            buttonHeight: FetchPixels.getPixelHeight(72),
            borderRadius:
            BorderRadius.circular(FetchPixels.getPixelHeight(12)),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0.0, 4.0)),
            ],
            prefixIcon: false,
            prefixImage: "card.svg",
            sufixIcon: true,
            suffixImage: "arrow_right.svg"),
        getVerSpace(FetchPixels.getPixelHeight(19)),
        getButtonWithIcon(
            context, Colors.white, "Government Support", Colors.black, () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GovernmentSupport()));
        }, 16,
            weight: FontWeight.w900,
            buttonHeight: FetchPixels.getPixelHeight(72),
            borderRadius:
            BorderRadius.circular(FetchPixels.getPixelHeight(12)),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0.0, 4.0)),
            ],
            prefixIcon: false,
            prefixImage: "headset.svg",
            sufixIcon: true,
            suffixImage: "arrow_right.svg"),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(
          edgeInsets,
          getButton(context, defaultGreen, "Register for event", Colors.white, () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventFormScreen()));
          }, 18,
              weight: FontWeight.w600,
              buttonHeight: FetchPixels.getPixelHeight(60),
              borderRadius:
              BorderRadius.circular(FetchPixels.getPixelHeight(15))),
        ),

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
            'pnc-half-logo.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont("The 11th Practical Nigerian Content (PNC) Forum", 24, defaultGreen, 2,
            fontWeight: FontWeight.w900),
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getMultilineCustomFont(
            "The 11th Practical Nigerian Content (PNC) Forum will take place in-person safely and securely between on 5-8 December 2022 in Uyo, Akwa Ibom. \n \n 11 years on from the enactment of the NOGICD Act, many strides have been made in developing domestic capacity that has spurred new business activity and retained wealth in the country.\n \n The Practical Nigerian Content Forum will welcome you back to celebrate 11 years of the Nigerian Content Achievements and to further devise strategies for business recovery and sustaining Nigerian Content in a post-pandemic environment, while businesses connect to foster economic growth. The official annual meeting will gather the most senior industry stakeholders to discuss new strategies and engage with government and industry players across the value chain.",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }
}
