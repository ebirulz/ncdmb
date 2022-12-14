import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ncdmb/utils/color_data.dart';
import 'package:ncdmb/views/guest_area/home/utils/event_list.dart';
import 'package:ncdmb/views/guest_area/home/utils/news_carousel.dart';
import 'package:ncdmb/views/guest_area/home/utils/services_widget.dart';
import 'package:ncdmb/views/guest_area/others/strategic_roadmap_screen.dart';
import 'package:ncdmb/views/notification/notification_screen.dart';
import '../../../views/guest_area/home/utils/executive_sec_widget.dart';
import '../../../views/guest_area/home/utils/home_category.dart';

import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../others/nogaps_screen.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class GuestHomeScreen extends StatefulWidget {
  const GuestHomeScreen({Key? key}) : super(key: key);

  @override
  State<GuestHomeScreen> createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
    setState(() {

    });
  }

  void backClick() {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: defaultGreen,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        drawer: SafeArea(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 200.0,
                  //height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  child: Image.asset(
                    'assets/images/welcome_logo.png',
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  onTap: () {
                    Navigator.pushNamed(context, '/ncdmb_overview_screen');
                  },
                  leading: const Icon(Icons.home),
                  title: const Text('About NCDMB'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/ncdmb_services');
                  },
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: const Icon(Iconsax.folder),
                  title: const Text('NCDMB Services'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/staff_services');
                  },
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: const Icon(Iconsax.people),
                  title: const Text('Staff Services'),
                ),
                /*ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  onTap: () {

                  },
                  leading: const Icon(Iconsax.video_vertical),
                  title: const Text('Media'),
                ),*/
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  onTap: () {
                    Navigator.pushNamed(context, '/all_events_screen');
                  },
                  leading: const Icon(Iconsax.menu_board),
                  title: const Text('Events'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/nogicjqs');
                  },
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: const Icon(Iconsax.global),
                  title: const Text('NOGICJQS'),
                ),/*
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  onTap: () {},
                  leading: const Icon(Iconsax.repeate_music),
                  title: const Text('Servicom'),
                ),*/
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  //dense: true,
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: const Icon(Iconsax.message),
                  title: const Text('Contact Us'),
                ),
                const Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getVerSpace(FetchPixels.getPixelHeight(50)),
                getPaddingWidget(
                  EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: _handleMenuButtonPressed,
                        child: getSvgImage(
                          "menu.svg",
                        ),
                      ),

                      Row(
                        children: [
                          getAssetImage("appbar_logo.png", FetchPixels.getPixelHeight(230),  FetchPixels.getPixelWidth(80)),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const NotificationScreen())
                          );
                        },
                        child: getSvgImage(
                          "notification.svg",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Categories",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                const Categories(),
                getVerSpace(FetchPixels.getPixelHeight(20)),
                NewsCarouselSlider(),
                Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffEBAB26),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const StrategicRoadMap()));
                            },
                            child: getAssetImage("roadmap.png", FetchPixels.getPixelHeight(200),  FetchPixels.getPixelWidth(150)),
                            //child: Image.asset('assets/images/roadmap.png'),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => const NOGAPSSCREEN())
                              );
                            },
                            child: getAssetImage("nogaps.png", FetchPixels.getPixelHeight(180),  FetchPixels.getPixelWidth(200)),
                            //child: Image.asset('assets/images/nogaps.png'),
                          ),
                        ],
                      ),
                    )
                ),
                executiveSec(context),
                getVerSpace(FetchPixels.getPixelHeight(20)),
                EventList(),
                getVerSpace(FetchPixels.getPixelHeight(20)),
                serviceListWidget(
                    context,
                    link: '/marine_vessel',
                    img: 'assets/services/boat.png',
                    name: 'MARINE VESSEL REPORT JUNE 2021',
                    icon: Iconsax.security_time
                ),
                serviceListWidget(
                    context,
                    link: '/ncdf_payment',
                    img: 'assets/services/payment-method.png',
                    name: 'NCDF PAYMENT PORTAL',
                    icon: Iconsax.card_pos
                ),
                serviceListWidget(
                    context,
                    link: '/ngn_content_act',
                    img: 'assets/services/handshake.png',
                    name: 'NIGERIAN CONTENT ACT',
                    icon: Iconsax.document
                ),
                serviceListWidget(
                    context,
                    link: '/event_management',
                    img: 'assets/services/cv.png',
                    name: 'OPERATIONAL GUIDELINES',
                    icon: Iconsax.clipboard_text
                ),

              ],
            ),
          ),
        )
    );
  }
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}