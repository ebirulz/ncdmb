import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../utils/color_data.dart';
import '../../../../utils/constant.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';
import '../../../../widgets/widget_utils.dart';

class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
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
                title: "2022 Sponsors",
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
          ''' <section class="listing__sponsor__wrapper media__sponsor fisrt-section">
                                <div class="container">
                                    <div class="c-t-sponsors-container sponsor-two_sec">
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    In Partnership With
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://ncdmb.gov.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/4p1pq5ik/ncdmb-logo-official.jpg" alt="NCDMB Logo Official">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Hosted By
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://akwaibomstate.gov.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/sg3frqek/akwa-ibom-logo.jpeg" alt="Akwa Ibom Logo">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Principal Sponsor
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://ippg-ng.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/avnpntos/ippg-logo.png" alt="IPPG Logo (1)">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Platinum Sponsors
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://www.nigerialng.com/Pages/index.aspx" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/xbhdhrng/logocrop.jpg" alt="Logocrop">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="javascript:void(0);" target="_self">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/ykancv5u/chevron_70x78.jpg" alt="Chevron 70X78">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.shell.com.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/abtbnssm/shell-logo.png" alt="Shell Logo">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="javascript:void(0);" target="_self">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/0h3lipt5/utm.jpg" alt="UTM">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Gold Sponsors
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://dcpremiumls.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/ob3d0en0/logocrop-3.jpg" alt="Logocrop (3)">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://corporate.exxonmobil.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/hl2lgkfq/sc.png" alt="Sc">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://www.colemancables.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/3zvl54gm/coleman.png" alt="Coleman">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://oilservltd-ng.com/olmls/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/jhkbmphj/oilserv.png" alt="Oilserv">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Silver Sponsors
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://www.first-epdc.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/k42b2h4v/first-e-p-logo-colour.jpg" alt="FIRST E&amp;P Logo Colour">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://mgvowgas.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/aurh0iy5/logocrop-5.jpg" alt="Logocrop (5)">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.nivafer.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/2s1bcxa0/nivafer-light-blue-logo.png" alt="NIVAFER Light Blue LOGO">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Bronze Sponsors
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://www.bourbonoffshore.com/en/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/eyrb5g3q/logocrop-6.jpg" alt="Logocrop (6)">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://www.buildwellng.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/n4znmqae/buildwell.png" alt="Buildwell">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.firstmarineeng.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/pscdmwor/fmes.png" alt="FMES">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.futureconcerns.com/index.html" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/wt0b1dgc/hi-res-logo-future-concerns.jpg" alt="HI RES LOGO FUTURE CONCERNS">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://www.ndwestern.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/lbemmtg0/nd-western-limited.png" alt="ND Western Limited">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.igpesgroup.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/rovjj3ll/igpes-new.png" alt="Igpes New">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://petromarineltd.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/ibdffenz/petromarine.png" alt="PETROMARINE">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://primeatlanticnigeria.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/xewjeg3u/prime-atlantic.png" alt="Prime Atlantic">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://miccomcables.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="https://www.pncnigeria.com//media/ojflqd01/miccom.png" alt="Miccom">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://www.shi-mci.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/23xdjn1s/samsung.png" alt="Samsung">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="http://www.daewoonigeria.net/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/dglphpbx/daewoo.jpg" alt="Daewoo">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://starzs-group.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/pqokk5r3/starzs-new-approved-logo.jpg" alt="Starzs New Approved Logo">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.jadgroup.org" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/2bqbdgxe/jcl-logo.jpg" alt="JCL LOGO">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.boi.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/ltvlwehn/boi_logo_color-01.jpg" alt="BOI Logo Color 01 (1)">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://pcts.com.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/hp3nflz2/pcts_logo-02.jpg" alt="PCTS Logo+ 02">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://totalenergies.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/gp0jwq1j/totalenergies_logo_rgb.png" alt="Totalenergies Logo RGB">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://aveonoffshore.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/vqljg5ee/aveonoffshore-cropped.jpg" alt="Aveonoffshore Cropped">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.dormanlongeng.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/1grnrsuq/dorman_long_-new.jpg" alt="DORMAN LONG NEW">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://uubo.org/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/oxrd3uwg/uubo-logo-high-resolution.png" alt="UUBO Logo High Resolution">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.brentexpetroleum.com/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/02qf3swa/brentex-petroleum-logo.png" alt="Brentex Petroleum Logo">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Site Visit Host
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="javascript:void(0);" target="_self">
                                <div class="c-t-logo">
                                    <img src="/media/a2qnd0rp/sit-logo.jpg" alt="SIT Logo">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
        <div class="c-t-large c-t-box">
                <div class="c-t-header">
                    Supporting Associations
                </div>
            <div class="c-t-inline-5 c-t-inline-5-multiple">
                        <div class="c-t-inline-each">
                            <a href="https://ogtan.org.ng/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/21mjmhax/ogtan.png" alt="OGTAN">
                                </div>
                            </a>
                        </div>
                        <div class="c-t-inline-each">
                            <a href="https://www.petan.org/" target="_blank" rel="noreferrer noopener">
                                <div class="c-t-logo">
                                    <img src="/media/pxhhw4t1/petan-logo.jpg" alt="Petan Logo">
                                </div>
                            </a>
                        </div>
            </div>
        </div>
                                    </div>
                                </div>
                            </section> ''',

        )
      ],
    );
  }

}
