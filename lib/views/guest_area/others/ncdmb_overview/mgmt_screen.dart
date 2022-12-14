import 'package:flutter/material.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class ManagementScreen extends StatefulWidget {
  const ManagementScreen({Key? key}) : super(key: key);

  @override
  State<ManagementScreen> createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
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
                title: "Management",
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
            'overview/mgmt.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        userListItem(
            context,
          title: 'Engr. Simbi Wabote (FNSE)',
          position: 'Executive Secretary',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/ES-portrait.jpg',
        ),
        userListItem(
          context,
          title: 'Mr. Patrick Daziba Obah',
          position: 'Director, Planning Research And Statistics (PRS)',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/02/Patrick.jpg',
        ),
        userListItem(
          context,
          title: 'Mr. Akintunde Adelana',
          position: 'Director, Monitoring And Evaluation',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/AkintundeAdelana-1-1.png',
        ),
        userListItem(
          context,
          title: 'Mr. Isaac Yalah',
          position: 'Director, Finance And Personnel Management',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/02/isaac.jpg',
        ),
        userListItem(
          context,
          title: 'Barr. Umar M. Babangida',
          position: 'Director, Legal Services',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/02/Umar-2.jpg',
        ),
        userListItem(
          context,
          title: 'Dr. Ginah O. Ginah',
          position: 'General Manager, Zonal Coordination And Corporate Communications',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/02/Ginah.jpg',
        ),
        userListItem(
          context,
          title: 'Mr. Akintunde Adelana',
          position: 'Director, Monitoring And Evaluation',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/AkintundeAdelana-1-1.png',
        ),
        userListItem(
          context,
          title: 'Engr. Paul Zuhumben',
          position: 'General Manager, Project Certifications And Authorization',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/02/Paul.jpg?',
        ),
        userListItem(
          context,
          title: 'Mr. Abdulmalik Halilu',
          position: 'General Manager, Research And Statistics',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2021/09/HaliliuA.jpg?w=1200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Mr. Akintunde Adelana',
          position: 'Director, Monitoring And Evaluation',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/AkintundeAdelana-1-1.png',
        ),
        userListItem(
          context,
          title: 'Mr. Akintunde Adelana',
          position: 'Director, Monitoring And Evaluation',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/AkintundeAdelana-1-1.png',
        ),

      ],
    );
  }

}
