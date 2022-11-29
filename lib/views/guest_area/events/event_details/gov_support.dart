import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class GovernmentSupport extends StatefulWidget {
  const GovernmentSupport({Key? key}) : super(key: key);

  @override
  State<GovernmentSupport> createState() => _GovernmentSupportState();
}

class _GovernmentSupportState extends State<GovernmentSupport> {
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
                title: "Goverment Support",
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
          ''' <section class="col-full-width fisrt-section">
                        <div class="container">
                        
                            <div class="full-width-inner">
                                    <div class="heading">
                                        <h2>NCDMB And PNC Enter Into An MOU</h2>
                                    </div>
                                <p>On Monday 2 July 2018, at the 17th annual Nigerian Oil &amp; Gas Conference and Exhibition, the Nigerian Content Development and Monitoring Board signed a Memorandum of Understanding with dmg Nigeria events for the Practical Nigerian Content Forum.</p>
<p>Under the terms of the five-year MoU, the NCDMB and dmg Nigeria events will organise the PNC Forum with the aim of providing a platform for government and industry players in the Nigerian oil and gas sector to deliberate on how Nigerian Content can unlock discovered potential.</p>
<p>The PNC Forum will provide and opportunity for Nigerian oil and gas industry stakeholders to discuss the current challenges being faced within the market, explore solutions and define action points for the next 12 – 18 months.</p>
<p>dmg Nigeria events is dedicated to supporting the NCDMB and the Nigerian oil and gas industry in continuing to acheive great fetes in Nigerian Content implementation. Through the years of discussion at the PNC Forum, business and industry, many objectives have been outlined including, but not limited to:</p>
<ul>
<li><strong>5 billion</strong>&nbsp;out of cumulative&nbsp;<strong>20 billion</strong>&nbsp;annual industry contracts retained in country</li>
<li>Industry contracting cycle reduced from 36 months to&nbsp;<strong>14</strong>&nbsp;months</li>
<li>Establishment of the first FPSO integration facility at Ladol yard – a first for West Africa, with prospects of creating&nbsp;<strong>50,000 direct and indirect jobs</strong>&nbsp;during integration activities</li>
<li>Nigerian owned oil and gas marine vessels increased from 10% to&nbsp;<strong>38%</strong></li>
<li>Total value of contracts awarded to Nigerian companies increased to&nbsp;<strong>83%</strong></li>
</ul>                            </div>
                        </div>
                    </section>  ''',

        )
      ],
    );
  }

}
