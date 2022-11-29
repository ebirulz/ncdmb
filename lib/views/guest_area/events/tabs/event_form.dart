import 'package:flutter/material.dart';
import 'package:ncdmb/utils/color_data.dart';

import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';
import 'event_dialog.dart';

class EventFormScreen extends StatefulWidget {
  const EventFormScreen({Key? key}) : super(key: key);

  @override
  State<EventFormScreen> createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  void finishView() {
    Constant.backToPrev(context);
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool agree = false;

  TextEditingController passwordController = TextEditingController();
  bool isPass = true;
  String defCode = "";


  @override
  void initState() {
    super.initState();
  }

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
              child: buildSignUpWidget(context),
            ),
          ),
        ),
        onWillPop: () async {
          finishView();
          return false;
        });
  }

  ListView buildSignUpWidget(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(26)),
        gettoolbarMenu(
          context,
          "back.svg",
              () {
            finishView();
          },
        ),
        getVerSpace(FetchPixels.getPixelHeight(22)),
        getCustomFont(
          "Sign Up",
          24,
          Colors.black,
          1,
          fontWeight: FontWeight.w900,
        ),
        getVerSpace(FetchPixels.getPixelHeight(10)),
        getCustomFont("Enter your detail for sign up!", 16, Colors.black, 1,
            fontWeight: FontWeight.w400),
        getVerSpace(FetchPixels.getPixelHeight(30)),
        getDefaultTextFiledWithLabel(
          context,
          "Name",
          nameController,
          Colors.grey,
          function: () {},
          height: FetchPixels.getPixelHeight(60),
          isEnable: false,
          withprefix: true,
          image: "user.svg",
        ),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getDefaultTextFiledWithLabel(
          context,
          "Email",
          emailController,
          Colors.grey,
          function: () {},
          height: FetchPixels.getPixelHeight(60),
          isEnable: false,
          withprefix: true,
          image: "message.svg",
        ),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getDefaultTextFiledWithLabel(
          context,
          "Phone Number",
          nameController,
          Colors.grey,
          function: () {},
          height: FetchPixels.getPixelHeight(60),
          isEnable: false,
          withprefix: true,
          image: "phone.svg",
        ),

        getVerSpace(FetchPixels.getPixelHeight(20)),
        getButton(context, defaultGreen, "Register for event", Colors.white, () {
          showDialog(
              barrierDismissible: false,
              builder: (context) {
                return const VerifyDialog();
              },
              context: context);
        }, 18,
            weight: FontWeight.w600,
            buttonHeight: FetchPixels.getPixelHeight(60),
            borderRadius:
            BorderRadius.circular(FetchPixels.getPixelHeight(15))),
      ],
    );
  }
}
