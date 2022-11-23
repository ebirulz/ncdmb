import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
                title: "NCDMB Overview",
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
            'overview.png',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <div class="elementor-widget-container">
					<div class="elementor-text-editor elementor-clearfix"><p class="yiv1244132451MsoNormal"><span lang="EN-US">The Nigerian Content Development and Monitoring Board (NCDMB) was established in 2010 by the Nigeria</span><span lang="EN-GB">n</span><span lang="EN-US">&nbsp;Oil and Gas Industry Content Development (NOGICD) Act</span><span lang="EN-GB">.&nbsp;</span><span lang="EN-US" style="font-size: 13px;">NCDMB is vested with the mandate to make procedures that will guide, monitor, coordinate and implement the provisions of the NOGICD Act signed into law on April&nbsp;</span><span lang="EN-GB" style="font-size: 13px;">22,&nbsp;</span><span lang="EN-US" style="font-size: 13px;">2010.&nbsp;</span></p><p class="yiv1244132451MsoNormal"><span lang="EN-US">Key functions of the Board include:</span></p><ul><li>To review, assess and approve Nigerian Content plans developed by operators.</li><li>To set guidelines and minimum content levels for project related activities across the oil and gas value chain.</li><li>To engage in targeted capacity building interventions that would deepen indigenous capabilities- Human Capital Development, Infrastructure &amp; Facilities, Manufactured Materials &amp; Local Supplier Development.</li><li>To grow and manage the Nigerian Content Development Fund.</li><li>To establish, maintain and operate the Joint Qualification System (NOGICJQS) in conjunction with industry stakeholders.</li><li>To monitor Nigerian Content Compliance by operators and service providers. This will be in terms of cumulative spending, employment creation and sources of local goods, service and materials utilized on projects and operations.</li><li>To award Certificate of Authorization for projects that complies with Nigerian Content provisions.</li><li>To conduct studies, research, investigation, workshops and trainings aimed at advancing the development of Nigerian Content.</li></ul><p><strong><span style="color: #008000;">Brief History of NCDMB</span></strong></p><p>The foundation for NCDMB was laid in 2001 when former President Olusegun Obasanjo inaugurated the Presidential Committee on Local Content in the Oil and Gas Industry. He mandated the Nigerian National Petroleum Corporation (NNPC) to drive the policy and set certain targets.</p><p>In its efforts to implement the policy, the national oil company set up the Nigerian Content Division within its system and issued some Nigerian Content directives to industry stakeholders.</p><p>Since there was no force of law behind the Nigerian Content directives, operators of the industry found it convenient to comply on best endeavor basis.<br>This situation provided the impetus for the Ministry of Petroleum Resources, NNPC and other industry stakeholders to work closely with the National Assembly to develop the Nigerian Oil and Gas Industry Content Development (NOGICD) Bill.</p><p>During the succeeding administration of late President Umaru Yar’Adua/Goodluck Jonathan, the National Assembly passed the NOGICD Bill.<br>President Goodluck Jonathan assented the Bill into law on April 22 and this gave birth to the NCDMB.</p><p>Dr. Ernest Nwapa, former staff of the Nigerian Content Division of NNPC served as the pioneer Executive Secretary from April 2010 to May l 2015. He was succeeded by Arc Denzel Kentebe. In September 2016, Engr. Simbi Kesiye Wabote was appointed as the 3rd substantive Executive Secretary of the Board.</p></div>
				</div> ''',

        )
      ],
    );
  }

}