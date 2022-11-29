import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class NewsFour extends StatefulWidget {
  const NewsFour({Key? key}) : super(key: key);

  @override
  State<NewsFour> createState() => _NewsFourState();
}

class _NewsFourState extends State<NewsFour> {
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
            'simbi.jpg',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getCustomFont(
            'African Content: Wabote Seeks Collaboration In Projects, Capacity development, R&D',
            17,
            defaultGreen,
            3,
            fontWeight: FontWeight.bold
        ),
        const SizedBox(height: 20,),
        getMultilineCustomFont(
            "The Executive Secretary of the Nigerian Content Development and Monitoring Board (NCDMB), Engr. Simbi Kesiye Wabotehas called for close collaboration among African oil-producing countries, particularly in human capacity development, joint development of energy projects, and research and development.\n \n He spoke at the ongoing 2022 Africa Energy Week (AEW), where he charged African oil producers to break down barriers that often prevent African countries from deepening African Content practice and economic collaboration, listing such issues to include language, currencies, immigration, and bias towards the dictates of colonial masters.\n \n He advised African leaders and businesses to recognize that poverty does not discriminate against race, religion, or gender, hence they must join hands within the continent and across the globe to tackle common challenges.\n \n The Executive Secretary expressed delight with the emerging collaborations amongst countries and institutions in Africa,especially in infrastructure projects and provision of funding.Other ongoing cooperative initiatives include the formation of the African Petroleum Producers Organization (APPO), the African Local Content Roundtable, and the recent effort by APPO to establish an Africa Energy Fund.\n \n Speaking further on the topic ‘’A Return to African Hands: Pragmatic Local Content, Africa Content and Asset Transfer”,Wabote explained that six essential parameters are needed to achieve sustainable Local Content programme. The parameters include an enabling regulatory framework backed with the appropriate legislation, baseline and periodic gap analysis to determine gaps that require closure in the areas of skills, facilities and infrastructure and thirdly, structured capacity-buildingintervention to spur the development of in-country capacities and capabilities. This will include local manufacturing, infrastructural development and Human Capacity Development.\n \n Other parameters needed for local content growth include funding and incentives,  research and development, which drives thedevelopment of home-grown technology and lastly, access to market, which is necessary to ensure patronage and utilization of capacities and capabilities developed.\n \n The Executive Secretary listed some of the achievements recorded in the implementation of Local Content in Nigeria and they include the increase in the value of in-country retention from five percent which was subsisted before the enactment of the Nigerian Oil and Gas Industry Content Development (NOGICD) Act to 47 percent, and the development of two world-class pipe mills, and five impressive pipe coating yards.\n \n Other achievements include Nigerians owning more than 40percent of marine vessels used in the oil and gas industry, the ability of Nigeria firms to fabricate more than 250,000 tonnes per year and the delivery of over 13 million training manhoursthrough the Human Capacity Development Programs.\n \n He also remarked that the Board completed the 17-storey NCDMB headquarters building and partnered with investors to construct four modular refineries, one of which is the 5,000barrels per day Waltersmith Modular Refinery which is alreadyoperational and others at various stages of development.\n \n He also noted that portfolio of intervention funds managed by Nigeria’s Bank of Industry and NEXIM Bank that have grown to more than 500million and the Board recommended the establishment of the African Energy Bank which was adopted by APPO and is now actively supported by AFREXIM as a means of ensuring African Energy Security.\n \n He added that the NCDMB enabled the construction of an FPSO integration facility in Lagos and constructed oil and gas industrial parks spread across six states to enhance local manufacturing of oil and gas components and partnered with investors to constructLPG jetties and storage terminals, LPG bottling plants, LPG cylinders manufacturing plant, LGP production plants, and gas processing facilities. These gas-based investments will deepen LPG utilization and actualize the Decade of Gas Initiative, he said.\n \n He also Local Content implementation has ensured thatindigenous operators such as SEPLAT, AITEO, EROTON, and others are now responsible for about 30 percent of the nation’s oil production and more than 60 percent of domestic gas supply and helped to increase confidence amongst indigenous operators on their capability to manage and grow production from divested assets.",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }

}