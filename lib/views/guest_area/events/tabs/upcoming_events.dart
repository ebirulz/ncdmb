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
          img: 'pnc-half-logo.png',
          function: proceed,
          date: '5-8 December 2022',
          desc: 'The 11th Practical Nigerian Content (PNC) Forum will take place in-person safely and securely between on 5-8 December 2022 in Uyo, Akwa Ibom. ',
          eventName: 'The 11th Practical Nigerian Content (PNC) Forum'
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
