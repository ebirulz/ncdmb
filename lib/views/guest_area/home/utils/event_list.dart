import 'package:flutter/material.dart';
import 'package:ncdmb/models/events_model.dart';
import 'package:ncdmb/views/guest_area/events/tabs/event_details.dart';

import '../../../../utils/dataFile.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../utils/spacing.dart';
import '../../../../widgets/svg_image.dart';

// ignore: must_be_immutable
class EventList extends StatelessWidget {

  EventList({Key? key}) : super(key: key);

  List<ModelPopularEvents> popularEventsLists = DataFile.popularEventList;

  @override
  Widget build(BuildContext context) {
    double horSpace = FetchPixels.getDefaultHorSpace(context);
    return Column(
      children: [
        getPaddingWidget(
          EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Events",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/all_events_screen');
                },
                child: Text(
                  "View all",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              )
            ],
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(16)),
        SizedBox(
          height: FetchPixels.getPixelHeight(215),
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: popularEventsLists.length,
            itemBuilder: (context, index) {
              ModelPopularEvents modelPopularEvents =
              popularEventsLists[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EventDetailsScreen()));
                },
                child: Container(
                  width: FetchPixels.getPixelWidth(177),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0.0, 4.0)),
                      ],
                      borderRadius: BorderRadius.circular(
                          FetchPixels.getPixelHeight(12))),
                  padding: EdgeInsets.only(
                      left: FetchPixels.getPixelWidth(10),
                      right: FetchPixels.getPixelWidth(10),
                      top: FetchPixels.getPixelHeight(10),
                      bottom: FetchPixels.getPixelHeight(10)),
                  margin: EdgeInsets.only(
                      left: (index % 2 == 0) ? horSpace : 0,
                      bottom: FetchPixels.getPixelHeight(24),
                      right: FetchPixels.getPixelWidth(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                          tag: popularEventsLists[index],
                          child: getCircularImage(
                              context,
                              double.infinity,
                              FetchPixels.getPixelHeight(115),
                              FetchPixels.getPixelHeight(12),
                              modelPopularEvents.image ?? "",boxFit: BoxFit.cover)),
                      // getAssetImage(
                      //     modelPopularService.image ?? "",
                      //     double.infinity,
                      //     FetchPixels.getPixelHeight(115),boxFit: BoxFit.fill),
                      // ),
                      getVerSpace(FetchPixels.getPixelHeight(10)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: getCustomFont(
                            modelPopularEvents.name ?? "",
                            14,
                            Colors.black,
                            1,
                            fontWeight: FontWeight.w900,
                          )),
                      getVerSpace(FetchPixels.getPixelHeight(4)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: getCustomFont(
                              modelPopularEvents.date ?? "",
                              14,
                              Colors.black,
                              1,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
