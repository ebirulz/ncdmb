import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/events/tabs/widgets/events.dart';

class PastEvents extends StatefulWidget {
  const PastEvents({Key? key}) : super(key: key);

  @override
  State<PastEvents> createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPastEventListItem(
          context,
          eventName: 'NCDMB Stakeholders Summit 2022',
          desc: 'The Summit with the theme “Towards maximizing potentials in the Mid and downstream Oil and Gas sector',
          date: '15th - 16th March 2022',
          img: 'event1.png',
          function: print,
        )
      ],
    );
  }
}
