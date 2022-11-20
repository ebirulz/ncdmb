import 'package:flutter/material.dart';
import 'package:ncdmb/utils/color_data.dart';
import 'package:ncdmb/views/guest_area/events/tabs/past_events.dart';
import 'package:ncdmb/views/guest_area/events/tabs/upcoming_events.dart';

import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';


class AllEvents extends StatefulWidget {
  const AllEvents({Key? key}) : super(key: key);

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> with SingleTickerProviderStateMixin {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  late TabController tabController;
  var position = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          getVerSpace(FetchPixels.getPixelHeight(50)),
          buildToolbar(context),
          getVerSpace(FetchPixels.getPixelHeight(30)),
          tabBar(),
          //getVerSpace(FetchPixels.getPixelHeight(10)),
          pageViewer()
        ],
      ),
    );
  }

  Expanded pageViewer() {
    return Expanded(
      child: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: const [
          UpcomingEvents(),
          PastEvents(),
        ],
        onPageChanged: (value) {
          tabController.animateTo(value);
          position = value;
          setState(() {});
        },
      ),
    );
  }

  List<String> tabsList = ["Upcoming Events", "Past Events"];

  Widget tabBar() {
    return getPaddingWidget(
      EdgeInsets.symmetric(horizontal: FetchPixels.getDefaultHorSpace(context)),
      TabBar(
        indicatorColor: Colors.transparent,
        physics: const BouncingScrollPhysics(),
        controller: tabController,
        labelPadding: EdgeInsets.zero,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
          position = index;
          setState(() {});
        },
        tabs: List.generate(tabsList.length, (index) {
          return Tab(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    getCustomFont(tabsList[index], 16,
                        position == index ? defaultGreen : Colors.black, 1,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.visible),
                    getVerSpace(FetchPixels.getPixelHeight(7)),
                    Container(
                      height: FetchPixels.getPixelHeight(2),
                      color: position == index
                          ? defaultGreen
                          : const Color(0xFFE5E8F1),
                    )
                  ],
                )),
          );
        }),
      ),
    );
  }

  Widget buildToolbar(BuildContext context) {
    return getPaddingWidget(
      EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
      gettoolbarMenu(context, "back.svg", () {
        Constant.backToPrev(context);
      },
          title: "Events",
          fontsize: 24,
          weight: FontWeight.w900,
          textColor: Colors.black,
          istext: true),
    );
  }
}

