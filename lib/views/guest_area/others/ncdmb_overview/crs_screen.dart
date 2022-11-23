import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class CRSScreen extends StatefulWidget {
  const CRSScreen({Key? key}) : super(key: key);

  @override
  State<CRSScreen> createState() => _CRSScreenState();
}

class _CRSScreenState extends State<CRSScreen> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    double defSpace = FetchPixels.getDefaultHorSpace(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: defSpace);
    return Scaffold(
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
                title: "Corporate Social Responsibility",
                weight: FontWeight.w900,
                textColor: Colors.black,
                fontsize: 24,
                istext: true,
                rightFunction: () {})),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(edgeInsets, eventImage()),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        getPaddingWidget(edgeInsets, eventDescription(context)),
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
            'overview/CSR_4.fw.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <div class="elementor-text-editor elementor-clearfix"><p><strong><span style="color: #008000;">CSR Policy Statement</span></strong></p><p>As A Public Sector Agency Established by Law, The Nigeria Content Development and Monitoring Board (“The Board) Shall Only Undertake, Support or Facilitate the Execution of Corporate Social Responsibility (CSR) Project Which Have Clear Potential to Meet Any Of Its Statutory Mandate, Particularly Within The Oil Producing States Of Nigeria.</p><p><strong><span style="color: #008000;">2. CSR Objectives</span></strong></p><p>The board may undertake, support or facilitate specific projects or programs to foster goodwill and corporate visibility especially science and technical education initiatives, job creation, capacity building, public enlightenment and community participation programs. Eligible CSR project or program must correlate with the board’s statutory mandate or have potential to advance the fulfilment government’s national economic aspiration in the petroleum industry through the local content act.</p><p><strong><span style="color: #008000;">3. CSR Guidelines</span></strong></p><ul><li><p>To Approve A Project or Program For CSR, The Board Shall Be Guided by The Following Considerations:</p></li><li><p>The project or program shall have budget provision in the extant or preceding year’s budget.</p></li><li><p>The project or program shall meet the test of relevancy as described in 1.1: CRS objective.</p></li><li><p>In the case of projects or programs not previously budgeted for, it must be of such extraordinary emergency that delay implementing it could hurt other critical objectives of the board or expose the board’s personnel or key stakeholder(s) to enormous security risk.</p></li><li><p>For a project or program to be undertaken, supported or facilitated by the board, it must have the capacity to meet or address a critical need commonly felt by majority of people in a particular community, local government area or state where it will be sited or executed.</p></li><li><p>Projects or programs to be supported must be targeted at job creation, youth empowerment capacity building, science &amp; technical education, or foster community participation in oil and gas projects.</p></li><li><p>A CSR project or program may be sited or executed in any part of the federation though priority shall be given to the oil producing states, communities and local government areas hosting the board’s project or facility.</p></li><li><p>The board may support or facilities a tangible project or intangible project provided it meets the selection criteria of the board as embodied in the CSR and guideline.</p></li></ul><p><strong><span style="color: #008000;">4. CSR Implementation Strategy</span></strong></p><p>The board may accomplish its CSR objectives through any of the following approaches:</p><ul><li><p>Direct sole sponsorship by the board.</p></li><li><p>Participation and collaboration from other industry stakeholders.</p></li><li><p>Requests to any relevant public sector agency for urgent infrastructural development, training or capacity building programs to benefit specific local community stakeholders or group.</p></li></ul><p>&nbsp;</p></div> ''',

        )
      ],
    );
  }

}
