import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class CapacityBuildingScreen extends StatefulWidget {
  const CapacityBuildingScreen({Key? key}) : super(key: key);

  @override
  State<CapacityBuildingScreen> createState() => _CapacityBuildingScreenState();
}

class _CapacityBuildingScreenState extends State<CapacityBuildingScreen> {
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
                title: "Capacity Building",
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
        const HtmlWidget(
          ''' <div id="elementor-tab-content-1361" class="elementor-tab-content elementor-clearfix elementor-active" data-tab="1" role="tabpanel" aria-labelledby="elementor-tab-title-1361" style="display: block;"><p><span style="color: #008000;"><strong>Who We Are</strong></span></p><p>We are the Board’s Capacity Building Division, saddled with the core mandate to create in-country value through viable and robust strategic development of capacity and capabilities. Ensuring the deliberate utilization and promotion of Nigerian human, material resources and services to further the attainment of sustainable development in the Nigerian oil and gas Industry, as well as the creation of sectoral linkages to boost industry contributions to the growth of Nigeria’s National Gross Domestic Product.</p><p><span style="color: #008000;"><strong>Our Objectives</strong></span></p><p>The key objectives of the division cover the following amongst others:</p><ul><li>Create and drive viable sustainable development initiatives and globally competitive capacity/capability in-country.</li><li>Encourage and drive the establishment and development of facilities and infrastructure for local manufacturing and related activities in collaboration with OEMs, investors and technical partners.</li><li>Attract investments and support the development of world-class and globally competitive educational institutions, manufacturing and training facilities.</li><li>Enhance the employability of Nigerians and maximize effective and sustainable utilization of Nigerian human capital in the oil and gas industry and linkage sector.</li><li>Drive job creation and support the development and growth of technical and non-technical skills, soft/essential skills, vocational and entrepreneurship skills and STEM education.</li><li>Promote intellectual creativity, technology transfer and stimulate local innovation and technology development in-country to maximize value addition and retention of industry spend.</li><li>Drive the growth of equipment and assets ownership by Nigerian companies, and sustainable growth of local supply and service value chain in the Nigerian Oil and Gas Industry.</li><li>Drive and ensure maximum patronage and utilization of locally produced goods and services, as well as equipment and assets owned by Nigerian companies.</li></ul></div> ''',

        )
      ],
    );
  }

}
