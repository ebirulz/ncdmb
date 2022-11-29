import 'package:flutter/material.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class NewsThree extends StatefulWidget {
  const NewsThree({Key? key}) : super(key: key);

  @override
  State<NewsThree> createState() => _NewsThreeState();
}

class _NewsThreeState extends State<NewsThree> {
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
            'slide3.jpg',boxFit: BoxFit.cover));
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getCustomFont(
            'Wabote, Jonathan, 42 Others Bag National Excellence Awards In Public Service',
            17,
            defaultGreen,
            3,
            fontWeight: FontWeight.bold
        ),
        const SizedBox(height: 20,),
        getMultilineCustomFont(
            "The Executive Secretary of the Nigerian Content Development and Monitoring Board (NCDMB), Engr. SimbiKesiye Wabote was on Friday conferred with the Distinguished Capacity Development Award” at the Nigeria Excellence Award in Public Service (NEAPS), by President Muhammadu Buhari (GCFR). \n \n The award was bestowed on Engr. Wabote at a colourful ceremony held at the State House Conference Centre, Abuja on Friday and was for the outstanding strides he accomplished, particularly in human and infrastructural capacity development since he was appointed as the helmsman of NCDMB in September 2016 and got reappointed in 2020.\n \n Other recipients of awards in different categories includedformer President Goodluck Jonathan, President of the Senate, Dr. Ahmad Lawan, Speaker of Federal House of Representatives, Rt. Honourable Femi Gbajabiamila, some serving governors, ministers, heads of performing agenciesand service chiefs.\n \n Delivering his address, President Buhari said the national recognition is intended to motivate other public officials to dedicate themselves and perform diligently in office. He noted that the awardees were being recognised for exhibiting transparency and accountability in the discharge of their responsibilities.\n \n He said: This award is in appreciation of the giant strides in the transformation of Nigeria. I thank you for your contributions and I expect this to serve as a motivation for you and others to continue doing more. \n \n Earlier in his speech, the Secretary to the Government of the Federation, Mr. Boss Mustapha explained that nominees were selected independently and professionally by the team of assessors constituted by the Best Strategic Media (TBS). He added that the Nigeria Excellence Award in Public Service(NEAPS) was set up to recognise distinguished public service to Nigeria, through either contributions to individuals, state or local community or the public through excellence in leadership, service and humanitarianism. Noting that recipients could range from federal, state and local governments as well as from non-profit organisations or persons in academia, he noted that all must have made significant contributions as career public servants.\n \n He challenged public officials to rededicate themselves to providing quality service to Nigerians irrespective of political, religious or regional differences, nothing that the challenges that faced were huge and should be tackled by all persons in positions of authority.\n \n Engr. Wabote and the Group Managing Director of the Nigerian National Petroleum Company (NNPC Ltd), Mr. Mele Kolo Kyari were the only recipients from the oil and industry. The GMD was recognised for outstanding reform initiative.",
            15,
            defaultGreen,
            fontWeight: FontWeight.w400,
            txtHeight: 1.3),
      ],
    );
  }

}
