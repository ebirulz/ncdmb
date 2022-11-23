import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/crs_screen.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/governing_council_screen.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/mgmt_screen.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/organogram_screen.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/overview_screen.dart';
import 'package:ncdmb/widgets/widget_utils.dart';

import '../../../../models/article_model.dart';
import '../../../../widgets/svg_image.dart';

class NCDMBOverviewScreen extends StatefulWidget {
  const NCDMBOverviewScreen({Key? key}) : super(key: key);

  @override
  State<NCDMBOverviewScreen> createState() => _NCDMBOverviewScreenState();
}

class _NCDMBOverviewScreenState extends State<NCDMBOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        _NewsOfTheDay(article: article),
        const SizedBox(height: 20,),
        contentListItem(
            context,
          title: 'Overview',
          desc: 'The Nigerian Content Development and Monitoring Board (NCDMB) was established in 2010 by the Nigerian Oil and Gas Industry Content Development (NOGICD) Act.',
          img: 'overview/ov.png',
          function: overview
        ),
        contentListItem(
            context,
            title: 'NCDMB Organogram ',
            desc: "Nigerian Content Development and Monitoring Board (NCDMB) graphical representation of the organisation's structure.",
            img: 'overview/og.png',
            function: organogram
        ),
        contentListItem(
            context,
            title: 'NCDMB Management ',
            desc: "An overview of NCDMB Management Staff",
            img: 'overview/mgmt.png',
            function: mgmt
        ),
        contentListItem(
            context,
            title: 'Governing Council',
            desc: "An overview of NCDMB Governing Council",
            img: 'overview/gc.png',
            function: gc
        ),
        contentListItem(
            context,
            title: 'Corporate Social Responsibility',
            desc: 'As A Public Sector Agency Established by Law, The Nigeria Content Development and Monitoring Board (“The Board) Shall Only Undertake, Support or Facilitate the Execution of Corporate Social Responsibility (CSR) Project Which Have Clear Potential to Meet Any Of Its Statutory Mandate, Particularly Within The Oil Producing States Of Nigeria.',
            img: 'overview/CSR_4.fw.png',
            function: csr
        ),
      ]),
    );
  }
  overview(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OverviewScreen()));
  }
  csr(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CRSScreen()));
  }
  mgmt(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ManagementScreen()));
  }
  organogram(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrganogramScreen()));
  }
  gc(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GoverningCouncilScreen()));
  }

}

class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainerLocal(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: 'assets/images/about.png',
    );
  }
}
