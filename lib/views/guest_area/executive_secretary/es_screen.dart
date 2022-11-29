import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class ExecutiveSecretaryScreen extends StatefulWidget {
  const ExecutiveSecretaryScreen({Key? key}) : super(key: key);

  @override
  State<ExecutiveSecretaryScreen> createState() => _ExecutiveSecretaryScreenState();
}

class _ExecutiveSecretaryScreenState extends State<ExecutiveSecretaryScreen> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    double defSpace = FetchPixels.getDefaultHorSpace(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: defSpace);
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backGroundColor,
          body: SafeArea(
            child: buildPage(edgeInsets, context, defSpace),
          ),
        ),
        onWillPop: () async {
          Constant.backToPrev(context);
          return false;
        });
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
                title: "Executive Secretary",
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
        getVerSpace(FetchPixels.getPixelHeight(29)),
        // packageList(context)
      ],
    );
  }

  Hero eventImage() {
    return Hero(
        tag: 'es image',
        child: getCircularImage(context, FetchPixels.getPixelWidth(374),
            FetchPixels.getPixelHeight(225), FetchPixels.getPixelHeight(16),
            'media/Simbi-Wabote.fw.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont("Engr. Simbi Wabote (Fnse)", 24, Colors.black, 2,
            fontWeight: FontWeight.w900),
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getMultilineCustomFont(
            "Engr. Simbi K. Wabote was appointed as the Executive Secretary Nigerian Content Development and Monitoring Board (NCDMB) by President Muhammadu Buhari (GCFR) on the 29th of September 2016. He was reappointed for a 2nd tenure by Mr. President on 25th September 2020, after a sterling performance in his first term of office."
                "\n \n Prior to his appointment, he was an Executive Director of Shell Petroleum Development Company (SPDC) Nigeria Limited and General Manager Business and Government Relations for Shell Companies in Nigeria (SCiN)."
                "\n \n He joined Shell in September 1991 as an Oil and Gas Engineer after a short stint with the Banking industry in Nigeria. He served Shell in various senior positions within Nigeria and in several countries in Africa, Europe, North America, Middle East, Asia and new frontier countries in Engineering, Local Content Development, Contracting & Procurement, Government Relations, and Community Affairs."
                "\n \n In his first four years as the Executive Secretary, Engr. Wabote reinvigorated the operations of the NCDMB and developed the Nigerian Content 10-Year Roadmap to grow Nigerian Content to 70 percent by 2027.  He spearheaded the rapid development of the Nigerian Oil and Gas Park in Odukpani, Cross Rivers State and Emeyal-1, Bayelsa, State and the launch of the 200m (USD) Nigerian Content Intervention Fund (NCI Fund) to provide low cost and accessible credit to service companies. He spearheaded the increase of the Fund to US 350m(USD) to meet increasing demand for credit by oil and gas companies."
                "\n \n He brought his project management skills into the construction of the Board’s new headquarters building complex, leading to the completion and commissioning of the 17-storey office building, 1,000 seater auditorium, and multi-level car park under five years."
                "\n \n He also pioneered the development and deployment of the Service Level Agreements (SLA) between the Board and the Nigeria LNG, Oil Producers Trade Section (OPTS) and Indigenous Petroleum Producers Group (IPPG), which has reduced the tendering cycle time to six months and fast tracks development of new projects."
                "\n \n Under his watch, NCDMB catalysed the successful integration of one of the largest Floating Production Storage and Offloading (FPSO) in-country at the SHI-MCI yard in the LADOL Free Trade Zone and facilitated in-country integration of six modules on the Egina",
            16,
            Colors.black,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }
}
