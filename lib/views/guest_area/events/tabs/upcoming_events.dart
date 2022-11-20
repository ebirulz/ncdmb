import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/events/tabs/event_details.dart';
import 'package:ncdmb/views/guest_area/events/tabs/widgets/events.dart';

class UpcomingEvents extends StatefulWidget {
  const UpcomingEvents({Key? key}) : super(key: key);

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEventListItem(
          context,
          img: 'barber.png',
          function: proceed,
          date: '12-Nov-2022',
          desc: 'Testing Description Testing Description Testing Description',
          eventName: 'NCDMB To Host Africa Local Content Investment Forum'
        )
      ],
    );
  }

  proceed(){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const EventDetailsScreen())
    );
  }

}
