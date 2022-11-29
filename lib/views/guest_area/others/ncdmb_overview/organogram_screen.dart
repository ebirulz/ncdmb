import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class OrganogramScreen extends StatefulWidget {
  const OrganogramScreen({Key? key}) : super(key: key);

  @override
  State<OrganogramScreen> createState() => _OrganogramScreenState();
}

class _OrganogramScreenState extends State<OrganogramScreen> {
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
                title: "NCDMB Organogram",
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
        tag: 'event',
        child: getCircularImage(context, FetchPixels.getPixelWidth(374),
            FetchPixels.getPixelHeight(225), FetchPixels.getPixelHeight(16),
            'overview/og.png',boxFit: BoxFit.cover));
    // getAssetImage(popularServiceLists[index].image ?? "",
    // FetchPixels.getPixelWidth(374), FetchPixels.getPixelHeight(225),
    // boxFit: BoxFit.fill),);
  }

  Column eventDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerSpace(FetchPixels.getPixelHeight(24)),
        const HtmlWidget(
          ''' <div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-1c551892 elementor-widget elementor-widget-toggle" data-id="1c551892" data-element_type="widget" data-widget_type="toggle.default">
				<div class="elementor-widget-container">
					<div class="elementor-toggle" role="tablist">
							<div class="elementor-toggle-item">
					<div id="elementor-tab-content-4751" class="elementor-tab-content elementor-clearfix elementor-active" data-tab="1" role="tabpanel" aria-labelledby="elementor-tab-title-4751" style="display: block;"><p style="text-align: center;"><span style="color: #008000;"><strong>NCDMB ORGANOGRAM</strong></span></p><p><img class="alignnone size-full wp-image-6339 jetpack-lazy-image jetpack-lazy-image--handled" src="https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/05/Organogram.png?resize=1200%2C877&amp;ssl=1" alt="" width="1200" height="877" data-recalc-dims="1" data-lazy-loaded="1" loading="eager"></p></div>
				</div>
							<div class="elementor-toggle-item">
					<div id="elementor-tab-content-4752" class="elementor-tab-content elementor-clearfix" data-tab="2" role="tabpanel" aria-labelledby="elementor-tab-title-4752"><p style="text-align: center;"><strong>NCDMB CORE VALUES</strong></p><p>&nbsp;</p><p><img loading="lazy" class="aligncenter wp-image-4847 jetpack-lazy-image" src="https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/06/Core-values2.png?resize=500%2C511&amp;ssl=1" alt="" width="500" height="511" data-recalc-dims="1" data-lazy-src="https://i0.wp.com/ncdmb.gov.ng/wp-content/uploads/2020/06/Core-values2.png?resize=500%2C511&amp;is-pending-load=1#038;ssl=1" srcset="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"></p></div>
				</div>
					</div>
				</div>
				</div>
						</div>
					</div> ''',

        )
      ],
    );
  }

}
