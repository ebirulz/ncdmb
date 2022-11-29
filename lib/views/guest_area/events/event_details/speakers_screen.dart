import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class GuestSpeakers extends StatefulWidget {
  const GuestSpeakers({Key? key}) : super(key: key);

  @override
  State<GuestSpeakers> createState() => _GuestSpeakersState();
}

class _GuestSpeakersState extends State<GuestSpeakers> {
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
                title: "Guest Speakers",
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
          title: 'H.E. Udom Gabriel Emmanuel',
          position: 'Governor Akwa Ibom',
          imgUrl: 'https://www.pncnigeria.com/media/bagmhkmh/his-excellency-mr-udom-emmanuel-governor-akwa-ibom-state.jpg',
        ),
        userListItem(
          context,
          title: 'H.E. Hon. Timipre Sylva',
          position: 'Minister of State for Petroleum Resources Federal Republic of Nigeria',
          imgUrl: 'https://www.pncnigeria.com/media/cehh4itd/sylva.jpg',
        ),
        userListItem(
          context,
          title: 'Ambassador Gabriel Aduda',
          position: 'Permanent Secretary Ministry of Petroleum Resources',
          imgUrl: 'https://www.pncnigeria.com/media/jj2dzchc/ambassador-gbariel-aduda.jpg',
        ),
        userListItem(
          context,
          title: 'Engr. Simbi Wabote',
          position: 'Executive Secretary (NCDMB)',
          imgUrl: 'https://www.pncnigeria.com/media/aptaa21r/eng-simbi-wambote.jpg?anchor=center&mode=crop&width=359&height=359&rnd=132779968924070000',
        ),
        userListItem(
          context,
          title: 'Osagie Okunbor',
          position: 'Managing Director, & Country Chair Shell Petroleum Development Company of Nigeria Limited, & Shell Companies in Nigeria',
          imgUrl: 'https://www.pncnigeria.com/media/s1xf1s2w/9.png?anchor=center&mode=crop&width=359&height=359&rnd=132604456105470000',
        ),
        userListItem(
          context,
          title: 'Olalekan Ogunleye',
          position: 'Deputy Managing Director Nigeria LNG',
          imgUrl: 'https://www.pncnigeria.com/media/carj3kpc/olalekan-ogunleye-picture.jpg?anchor=center&mode=crop&width=359&height=359&rnd=133128918541170000',
        ),
        userListItem(
          context,
          title: 'Richard Laing',
          position: 'Chairman & Managing Director ExxonMobil Companies in Nigeria',
          imgUrl: 'https://www.pncnigeria.com/media/44ankfr1/richard-laing.png?anchor=center&mode=crop&width=359&height=359&rnd=132804488432070000',
        ),
        userListItem(
          context,
          title: 'Patrick Obah',
          position: 'Director - Planning, Research & Statistics (NCDMB)',
          imgUrl: 'https://www.pncnigeria.com/media/b5yjpvkd/patrick_obah-removebg-preview-2.png?anchor=center&mode=crop&width=359&height=359&rnd=132780890281770000',
        ),
        userListItem(
          context,
          title: 'Isaac Yalah',
          position: 'Director – Finance & Personnel Management NCDMB',
          imgUrl: 'https://www.pncnigeria.com/media/bmcn3olc/isaac-yalah.jpg?anchor=center&mode=crop&width=359&height=359&rnd=132780785972700000',
        ),
        userListItem(
          context,
          title: 'Mr. Akintunde Adelana',
          position: 'Director, Monitoring And Evaluation',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/AkintundeAdelana-1-1.png',
        ),
        userListItem(
          context,
          title: 'Eberechukwu Oji',
          position: 'Managing Director & Chief Executive Officer ND Western',
          imgUrl: 'https://www.pncnigeria.com/media/otdfpfz2/eberechukwu-oji.jpg?anchor=center&mode=crop&width=359&height=359&rnd=132825752495730000',
        ),

      ],
    );
  }

}
