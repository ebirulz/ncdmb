import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class ProjectsCertificatioonScreen extends StatefulWidget {
  const ProjectsCertificatioonScreen({Key? key}) : super(key: key);

  @override
  State<ProjectsCertificatioonScreen> createState() => _ProjectsCertificatioonScreenState();
}

class _ProjectsCertificatioonScreenState extends State<ProjectsCertificatioonScreen> {
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
                title: "Projects Certification & Authorization",
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

  Hero eventImage() {
    return Hero(
        tag: 'event image',
        child: getCircularImage(context, FetchPixels.getPixelWidth(374),
            FetchPixels.getPixelHeight(225), FetchPixels.getPixelHeight(16),
            'services/pc.png',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <section class="elementor-section elementor-top-section elementor-element elementor-element-5697586 elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="5697586" data-element_type="section">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-70ad924d" data-id="70ad924d" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-3f503d7f elementor-widget elementor-widget-text-editor" data-id="3f503d7f" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
					<div class="elementor-text-editor elementor-clearfix"><p>Projects Certification and Authorization Division (PCAD) of the Nigerian Content Development and Monitoring Board (NCDMB) reports directly to the Executive Secretary Office of NCDMB. The division is coordinated, managed and Supervised by the General Manager PCAD, and currently has three departments headed by managers.</p><p><span style="color: #339966;"><strong>PCAD Structural Composition:</strong></span></p><p>The Division comprises Three Departments, namely:</p><ol><li>Upstream Department (UPD)</li><li>Midstream Department (MID)</li><li>Refinery and Gas Department (RGD)</li></ol><blockquote><p><span style="color: #339966;"><strong>Vision:</strong> “To Maximize Nigerian Content Value in projects executed in the Nigerian Oil and Gas Industry”</span></p><p><span style="color: #339966;"><strong>Mission</strong> “To extract Nigerian Content Commitments from Industry Operators before contract award in line with the requirements of the NOGICD ACT, 2010”</span></p></blockquote><p>The division’s major responsibility is to ensure that all tenders in the Oil and Gas Industry comply with the minimum Nigerian Content targets stipulated in the schedules of the NOGICD Act. Execution of this responsibility is carried out by interfacing with the Nigerian content (NC) department of Operators, who in turn interfaces with the Service providers/Contractors during all stages of the contracting process in line with sections 7-22 of the NOGICD Act.</p><p>The Contracting and Tendering Process (bid document review, certification and evaluation process) commences with the Oil and Gas Operator submitting a Nigerian Content Plan (NC Plan) for the Board’s review and approval.</p></div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>''',

        )
      ],
    );
  }

}
