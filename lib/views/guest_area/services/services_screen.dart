import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/services/capacity_building_screen.dart';
import 'package:ncdmb/views/guest_area/services/monitoring_screen.dart';
import 'package:ncdmb/views/guest_area/services/projects_certification_screen.dart';
import 'package:ncdmb/views/guest_area/services/service_charter_screen.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        const _NewsOfTheDay(),
        const SizedBox(height: 20,),
        contentListItem(
            context,
            title: 'Service Charter',
            desc: 'The purpose of this Charter is to described what NCDMB does, how it operates and how it intends to provide effective service to Nigerian citizens and stakeholders in the oil and gas',
            img: 'services/sc.png',
            function: serviceCharter
        ),
        contentListItem(
            context,
            title: 'Projects Certification',
            desc: "Projects Certification and Authorization Division (PCAD) of the Nigerian Content Development and Monitoring Board (NCDMB)",
            img: 'services/pc.png',
            function: projectCert
        ),
        contentListItem(
            context,
            title: 'Capacity Building',
            desc: "The primary thrust of this unit is to drive competence-based, industry/job-ready and globally competitive",
            img: 'services/cb.png',
            function: capacityBuilding
        ),
        contentListItem(
            context,
            title: 'Monitoring & Evaluation',
            desc: "Expatriate Quota Monitoring",
            img: 'services/me.png',
            function: monitoring
        ),
      ]),
    );
  }

  serviceCharter(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ServiceCharterScreen()));
  }
  projectCert(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProjectsCertificatioonScreen()));
  }
  capacityBuilding(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CapacityBuildingScreen()));
  }
  monitoring(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MonitoringEvaluationScreen()));
  }
}

class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ImageContainerLocal(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: 'assets/images/services/s.png',
    );
  }
}
