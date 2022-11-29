import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class NewsOne extends StatefulWidget {
  const NewsOne({Key? key}) : super(key: key);

  @override
  State<NewsOne> createState() => _NewsOneState();
}

class _NewsOneState extends State<NewsOne> {
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
                title: "Press Release",
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
            'slide1.jpg',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getCustomFont(
            'Wabote Commissions GIL Automation’s Factory, Charges Oil Firms On Diversification, Energy Transition',
            17,
            defaultGreen,
            3,
          fontWeight: FontWeight.bold
        ),
        const SizedBox(height: 20,),
        getMultilineCustomFont(
            "The Executive Secretary of the Nigerian Content Development and Monitoring Board (NCDMB), Engr. SimbiKesiye Wabote on Thursday in Lagos performed the commissioning of GIL Automations’ cable tray and switchgear factory and the opening of its new building. \n \n The company offers an array of services in electrical and automation services, switchgear manufacturing and panel solutions as well as process management and flow control. \n \n The Executive Secretary lauded the company for expanding from the provision of service to manufacturing, noting that such progression shows that Nigerian oil and gas servicecompanies are taking up the challenge to grow their outfits and contribute to the development of in-country capacities and capabilities, providing key services for the sustenance and growth of the industry and its linkage sectors. He said: The business shift from service to manufacturing of electrical and automation components under your leadership is a very strategic move that we are very excited about. \n \n He remarked that GIL Automations had developed capacity to provide world class services across the oil, gas, manufacturingand power industries, and created a niche for industrialautomation, instrumentation, electrical, control, communication and safety systems. The extension of the company capacities to other sectors helps to meet the strategic initiatives established under the Nigerian Content 10-year Strategic Roadmap, he said. \n \n He added that “as an ISO9001 certified local manufacturer of low voltage Electrical products in line with international standards, the products are not only meant for local market, but also in high demand within the regional and continental markets. \n \n Speaking further, Wabote emphasized the need for Nigerian oil and gas service providers to widen the application of their services to other sectors of the economy instead of solely relying on the oil and gas sector. He noted the cyclical nature of the oil and gas industry, stressing that every discerning service company needed to have a model to adapt to any prevailing circumstance. \n \n He said the ongoing energy transition further underlined the necessity for companies to think differently and acquire new capabilities, to enable them operate successful in the energy transition environment, without being unduly worried about their survival. \n \n He recalled that companies converted their factories at the peak of COVID-19 to produce some of the needed items at that time, adding that “this same ingenuity is required of the service companies to take a look at their service equipment, modelling software, personnel and other assets to check the opportunities they are over-looking due to being fixated on contracts from the oil and gas industry. \n \n If they don’t meet these criteria, they would not have partnership with Siemens. The association is not by compulsion, it is not by provisions of the Act. They see a mutually beneficial relationship in the type of service they provide ",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }

}
