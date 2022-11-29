import 'package:flutter/material.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class GoverningCouncilScreen extends StatefulWidget {
  const GoverningCouncilScreen({Key? key}) : super(key: key);

  @override
  State<GoverningCouncilScreen> createState() => _GoverningCouncilScreenState();
}

class _GoverningCouncilScreenState extends State<GoverningCouncilScreen> {
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
                title: "Governing Council",
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
            'overview/gc.png',boxFit: BoxFit.cover));
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
          title: 'Chief Timipre Sylva',
          position: 'Chairman, Governing Council',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/03/Timipre-Sylva.jpg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Engr. Simbi Wabote (Fnse)',
          position: 'Secretary, Governing Council',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2021/02/ES-portrait.jpg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Mr. Mina Oforiokuma',
          position: 'Representative, Nigerian Content Consultative Forum (NCCF)',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2021/05/Mina-O-GC.jpeg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Mr. Kashim Abdul Ali',
          position: 'Representative, Council For The Regulation Engineering In Nigeria (COREN)',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/03/Kashim-Abdul-Ali.jpg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Mr. Nicolas C. Odinuwe',
          position: 'PETAN Chairman',
          imgUrl: 'https://ncdmb.gov.ng/wp-content/uploads/elementor/thumbs/NIcolas-C-Odinuwe-PETAN-Chairman-2020-oxb41yisln679rpb0pf5q1djmgd8kvmkkwgxjwbu8g.bmp',
        ),
        userListItem(
          context,
          title: 'Barr. Oyanbo Peace Owei',
          position: 'Representative, Ministry Of Petroleum Resources (MPR)',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2021/03/Barr-Oyanbo-Owei.jpg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Engr. Sarki Auwalu',
          position: 'Director/CEO Department Of Petroleum Resources DPR)',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/03/Sarki-Auwalu-MNSE.jpg?fit=200%2C200&ssl=1',
        ),
        userListItem(
          context,
          title: 'Mr. Olorundare Sunday Thomas',
          position: 'Commissioner For Insurance, NAICOM',
          imgUrl: 'https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/03/Olorundare-Sunday-Thomas.jpg?fit=200%2C200&ssl=1',
        ),
      ],
    );
  }

}
