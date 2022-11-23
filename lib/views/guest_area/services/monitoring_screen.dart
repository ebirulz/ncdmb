import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class MonitoringEvaluationScreen extends StatefulWidget {
  const MonitoringEvaluationScreen({Key? key}) : super(key: key);

  @override
  State<MonitoringEvaluationScreen> createState() => _MonitoringEvaluationScreenState();
}

class _MonitoringEvaluationScreenState extends State<MonitoringEvaluationScreen> {
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
                title: "Monitoring & Evaluation",
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
            'services/me.png',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <div id="elementor-tab-content-2591" class="elementor-tab-content elementor-clearfix elementor-active" data-tab="1" role="tabpanel" aria-labelledby="elementor-tab-title-2591" style="display: block;"><p>The EQ Monitoring unit of NCDMB is responsible for Monitoring and driving compliance with the provisions of the NOGICD Act with respect to deployment of Expatriates in the Nigerian Oil and Gas industry.</p><p>Specific sections of the NOGICD Act on Expatriate deployment include:</p><ul><li>Section 31 – Requirements for Succession Plan for positions held by Expatriates.</li><li>Section 32 – Allowance for Expatriate Positions in Company Management.</li><li>Section 33 – Approval of the Board for application for Expatriates.</li></ul><p><span style="color: #008000;"><strong>OVERVIEW OF EQ MONITORING ACTIVITIES:</strong></span></p><p>The EQ Monitoring Unit therefore carries out the following activities:</p><ol><li>Monitors and tracks the utilization of all Expatriate Quota approvals granted by the Board to companies operating in the Nigerian Oil and Gas industry.</li><li>Ensures that companies that have obtained EQ approvals comply with the terms of their EQ approvals with respect to –</li></ol><ul><li style="list-style-type: none;"><ul><li>Deployment of only the expatriate positions approved.</li><li>Fulfillment of Succession Plan, Understudy and Nigerianization and employment commitments.</li><li>Capture of all expatriates on the NCDMB Expatriates Biometric Database</li></ul></li></ul><ol><li>Identification of frequently occurring skill sets deployed by expatriates and skill gap areas for development of Nigerians.</li><li>Identification of all cases of violation of the NOGICD Act by illegal deployment of expatriates without EQ approvals from the Board and application of measures to address such violation.</li><li>Collation, analysis and evaluation of Expatriate deployment information and data in the Nigerian oil and gas industry.</li></ol><p><span style="color: #008000;"><strong>REQUIREMENTS FROM COMPANIES TO ENSURE COMPLIANCE ON EXPATRIATE DEPLOYMENT</strong></span></p><ol><li>Company must obtain EQ Approval from the Board before applying to the Ministry of Interior or other Government Agency for EQ, TWP, CERPAC or any other permits.</li><li>Company must submit a detailed Succession Plan using the Board’s Succession Plan format/ template before and after approval of EQ (SP format/ template available for download on <a href="https://ncdmb.gov.ng/monitoring-reports/">https://ncdmb.gov.ng/monitoring-reports/</a>)</li><li>Company must complete the understudy progress reporting template for each understudy using the Board’s understudy progress reporting format/ template (SP format/ template available for download on www….)</li><li>Company must undertake biometrics data capture for all expatriates deployed by the company.</li><li>Company must fulfill all Nigerianization and employment commitments/fulfil Commitments (Execute Nigerianization &amp; Employment Commitment)</li><li>Company must submit comprehensive staff/ personnel list</li><li>Company must submit expatriate quota returns every quarter.</li></ol><p><span style="color: #008000;"><strong>CONTACT PERSONS IN EQ MONITORING</strong></span></p><p>Manager, Upstream Projects &amp; Quota Monitoring: <a href="mailto:jefferson.tuatongha@ncdmb.gov.ng">jefferson.tuatongha@ncdmb.gov.ng</a></p><p>Deputy Manager Upstream Quota Monitoring: <a href="mailto:tassallah.tersugh@ncdmb.gov.ng">tassallah.tersugh@ncdmb.gov.ng</a></p><p>Supervisor, Upstream Quota Monitoring: <a href="mailto:nander.salmwang@ncdmb.gov.ng">nander.salmwang@ncdmb.gov.ng</a></p><p>Supervisor, Upstream Quota Monitoring: <a href="mailto:grace.wilson@ncdmb.gov.ng">grace.wilson@ncdmb.gov.ng</a></p><p>Supervisor, Upstream Quota Monitoring: <a href="mailto:ozoh.kingsley@ncdmb.gov.ng">ozoh.kingsley@ncdmb.gov.ng</a></p></div> ''',

        )
      ],
    );
  }

}
