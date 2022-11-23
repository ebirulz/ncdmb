import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class ServiceCharterScreen extends StatefulWidget {
  const ServiceCharterScreen({Key? key}) : super(key: key);

  @override
  State<ServiceCharterScreen> createState() => _ServiceCharterScreenState();
}

class _ServiceCharterScreenState extends State<ServiceCharterScreen> {
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
                title: "Service Charter",
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
          title: "Service Charter",
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
            'services/sc.png',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <div class="elementor-widget-container">
					<div class="elementor-text-editor elementor-clearfix"><p style="font-size: 14px; font-style: normal; font-weight: 400;">The purpose of this Charter is to described what NCDMB does, how it operates and how it intends to provide effective service to Nigerian citizens and stakeholders in the oil and gas industry in line with its statutory mandate and in fulfillment of the Federal Government’s desire for improved service delivery through the various Ministries, Departments and Agencies (MDA) of government.</p>
<p style="font-size: 14px; font-style: normal; font-weight: 400;">The Charter also describes the feedback mechanism in the event of service failure to ensure continuous improvement in the Board’s performance or service delivery.</p>
<p style="font-size: 14px; font-style: normal; font-weight: 400;"><span style="font-size: 14px; font-weight: 700;">OUR CORE MANDATE</span></p>
<p style="font-size: 14px; font-style: normal; font-weight: 400;"><span style="font-size: 14px; font-weight: 700;">The core mandate of the NCDMB include:</span></p>
<ol style="font-size: 14px; font-style: normal; font-weight: 400;">
<li style="font-size: 14px;">To review, assess and approve Nigerian Content and report submitted by operators to the Board.</li>
<li style="font-size: 14px;">To issue Certificate of Authorization for approved projects and operation in the oil and gas industry.</li>
<li style="font-size: 14px;">To make procedures, issue guidelines and set minimum local content level for projects and operations in the oil and industry.</li>
<li style="font-size: 14px;">To carry out targeted capacity building interventions to fill identified human and infrastructure gaps in the Nigeria oil and gas industry.</li>
<li style="font-size: 14px;">To collect and manage the Nigerian Content Development fund for the growth and advancement of indigenous capability in the oil and gas industry.</li>
<li style="font-size: 14px;">To establish, maintain and operate an e-market place and Nigerian Oil and Gas Industry Content Joint Qualification System (NOGICJQS) in conjunction with industry stakeholders.</li>
<li style="font-size: 14px;">To monitor Nigerian content compliance by operators and service providers in terms of cumulative spend, employment creation and sources and goods and services utilized in projects and operations in the Nigerian oil and gas industry.</li>
<li style="font-size: 14px;">To conduct studies, researches, investigation, workshops and trainings aimed at promoting of Nigerian content in the Nigerian oil and gas industry.</li>
<li style="font-size: 14px;">To supervise, coordinate, administer, monitor compliance and manage development of Nigerian content in the&nbsp;&nbsp; oil and gas industry.</li>
<li style="font-size: 14px;">To support indigenous service providers to develop required capabilities and capacities to deepen Nigerian Content participation in the oil and gas industry.</li>
<li style="font-size: 14px;">To collaborate with other agencies of Government on matters related to Nigeria content implementation in the oil and gas industry.</li>
<li style="font-size: 14px;">To organize conferences, workshops, seminars, symposia, trainings, roadshows and other public education to provide requisite enlightenment about Nigerian Content Philosophy, Implementation, Legislation, Regulation and Guidelines.</li>
<li style="font-size: 14px;">To implement the provision of the NOGICD Act as well as Regulations made by the Minister pursuant to the Act.</li><li style="font-size: 14px;">To ensure that Nigerian Indigenous Operators are given first consideration in the award of oil blocks, oil lifting license and in contracts to be awarded for any approved project or operation in the Nigerian oil and gas industry.</li><li style="font-size: 14px;">To ensure that the exclusive consideration is given to Nigerian Indigenous service companies with evidence of asset ownership and requisite capacity in the award of contracts for drilling services in land and swamp of the Nigerian oil and gas industrt.</li>
</ol></div>
				</div>''',

        )
      ],
    );
  }

}
