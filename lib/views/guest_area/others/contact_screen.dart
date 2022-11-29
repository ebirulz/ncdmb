import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
        const HtmlWidget(
          ''' <div class="elementor-widget-container">
					<ul class="elementor-icon-list-items">
							<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-home"></i>						</span>
										<span class="elementor-icon-list-text">Nigerian Content Tower, Oxbow Lake Road, Swali,<br>Yenagoa, Bayelsa State</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-envelope"></i>						</span>
										<span class="elementor-icon-list-text">info@ncdmb.gov.ng</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-envelope"></i>						</span>
										<span class="elementor-icon-list-text">servicom@ncdmb.gov.ng</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-envelope"></i>						</span>
										<span class="elementor-icon-list-text">support@nogicjqs.com</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-phone-square"></i>						</span>
										<span class="elementor-icon-list-text">070000NCDMB</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-phone-square"></i>						</span>
										<span class="elementor-icon-list-text">07000062362</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-phone-square"></i>						</span>
										<span class="elementor-icon-list-text">09120007223  - Servicom complaints/Enquiries</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-phone-square"></i>						</span>
										<span class="elementor-icon-list-text">09120006232  - Servicom complaints/Enquiries</span>
									</li>
								<li class="elementor-icon-list-item">
											<span class="elementor-icon-list-icon">
							<i aria-hidden="true" class="fas fa-business-time"></i>						</span>
										<span class="elementor-icon-list-text">Opening Hours: 8:00am - 5:00pm Weekdays</span>
									</li>
						</ul>
				</div>''',

        ),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getCustomFont("Send us a message", 16, Colors.black, 1,
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
        getDefaultTextFiledWithLabel(
          context,
          "Messages",
          nameController,
          Colors.grey,
          function: () {},
          height: FetchPixels.getPixelHeight(60),
          isEnable: false,
          withprefix: true,
          image: "Message.svg",
        ),

        getVerSpace(FetchPixels.getPixelHeight(20)),
        getButton(context, defaultGreen, "Send Message", Colors.white, () {

        }, 18,
            weight: FontWeight.w600,
            buttonHeight: FetchPixels.getPixelHeight(60),
            borderRadius:
            BorderRadius.circular(FetchPixels.getPixelHeight(15))),
      ],
    );
  }
}
