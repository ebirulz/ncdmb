import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class NewsTwo extends StatefulWidget {
  const NewsTwo({Key? key}) : super(key: key);

  @override
  State<NewsTwo> createState() => _NewsTwoState();
}

class _NewsTwoState extends State<NewsTwo> {
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
            'services/cb.png',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getCustomFont(
            'NCDMB Hosts R&D Roundtable, Gets Huge Backing From Industry Operators',
            17,
            defaultGreen,
            3,
            fontWeight: FontWeight.bold
        ),
        const SizedBox(height: 20,),
        getMultilineCustomFont(
            "Research and development efforts in the Nigerian oil and gas industry have been given a huge boost as key operators under the aegis of Petroleum Contractors Trade Section (PCTS) have offered to provide an array of support that would facilitate demand-driven and sustainable R&D solutions for the industry. \n \n Chairman of PCTS, Mr. Tayo Akinkunmi spoke at the 2ndNigerian oil and gas industry research and development roundtable convened last week in Abuja by the Nigerian Content Development and Monitoring Board (NCDMB). He announced that the group, renowned as the custodians of technology in the oil and gas industry, would be willing to create a window for researchers and innovators to meet with subject matter experts, who would help them to better understand the oil and gas sectoras well as define research problems and priorities, to guide their R&D efforts. \n \n He added that PCTS would also provide researchers with the acceptance criteria definition for R&D efforts, testing plans and validation methodologies, and access to testing and qualification facilities. Member companies of the PCTS include Baker Hughes, Schlumberger, Halliburton, Bristow, Julius Berger, NigerStar7, TechnipFMC and Tenaris.\n \n The group’s chairman added that the companies would also be willing to provide advisory on go-to-market strategies and targeted funding.\n \n Akinkunmi further harped on the importance of sustainable R&D, emphasizing that R&D needs to be viable to drive itself. He also stated that R&D leads to global dominance, provides a response to unpredictable and turbulent times, aside from the immediate economic reward.\n \n The two-day event drew attendance from operating oil companies, international and indigenous service firms, senior academics, and researchers, including the five research centres of excellence (CoE) being established in universities by the NCDMB. \n \n Some other key suggestions from participants included the imperative for synergy among agencies of government that promote research and development in the country. The experts frowned against the duplication of efforts by agencies, including the establishment of research centres of excellence in several universities, without any alignment. Discussions also centered around the need for collaboration among researchers, considering the interdisciplinary nature of R&D and the need for research proposals and reports seeking financial support to highlight theireconomic value, without being filled with technical details of the project.\n \n Providing the background for the R&D roundtable, the Director, Planning, Research and Statistics (PRS), NCDMB, Mr. Patrick Daziba Obah explained that the event was organized to assess the level of the Board’s R&D activities, analyze current energytrends, and identify what could be done to improve the landscape.\n \n He gave an insight into the discussions at the programme, noting that: we looked at funding, how well we are doing, the challenges and steps we need to take to mitigate them. We also looked at infrastructural development, how that plays out in the R&D landscape.\n \n A key outcome of the roundtable, according to the Director was the need for researchers to develop competencies in writing viable R&D proposals. He said: “the researcher should be able to sell his or her idea in such a manner that any evaluator would understand the basics of the research proposal.” He affirmed the Board’s willingness to partner other organisations to promote research and development, adding that the Board is currently collaborating with several ministries, departments and agencies (MDAs) and even private sector groups, emphasising that those partnerships were contributory to the impressive strides recorded in Nigerian content development.\n \n In his presentation, the General Manager, Research, Statistics and Development, Mr. Abdulmalik Halilu gave details of the Board’s sponsored centres of excellence (CoE). He stated that the Federal University of Technology, Minna (FUT Minna) is researching on Technology Development Studies, while Federal University of Technology Akure (FUTA) is working on Geological & Geophysical Studies. Other COEs are Niger Delta University, Bayelsa State, with interests in Engineering Services Studies,Federal University of Technology Owerri, with a focus on Local Raw Material Substitution Studies and lastly Modibbo AdamaUniversity of Technology, with focus on Safety & Environment Studies.",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }

}
