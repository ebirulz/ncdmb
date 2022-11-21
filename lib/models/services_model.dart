import 'package:equatable/equatable.dart';

class Service extends Equatable {
  final String id;
  final String title;
  final String body;
  final String imageUrl;

  const Service({
    required this.id,
    required this.title,
    required this.body,
    required this.imageUrl,
  });

  static List<Service> services = [
    const Service(
      id: '1',
      title:
      'Service Charter',
      body:
          'The purpose of this Charter is to described what NCDMB does, how it operates and how it intends to provide effective service to Nigerian citizens and stakeholders in the oil and gas industry in line with its statutory mandate and in fulfillment of the Federal Government’s desire for improved service delivery through the various Ministries, Departments and Agencies (MDA) of government.'
          '\n \n The Charter also describes the feedback mechanism in the event of service failure to ensure continuous improvement in the Board’s performance or service delivery.',
      imageUrl:
      'assets/images/overview.png',
    ),
    const Service(
      id: '2',
      title:
      'Projects Certification & Authorization',
      body:
      'Projects Certification and Authorization Division (PCAD) of the Nigerian Content Development and Monitoring Board (NCDMB) reports directly to the Executive Secretary Office of NCDMB. The division is coordinated, managed and Supervised by the General Manager PCAD, and currently has three departments headed by managers.'
          '\n \nPCAD Structural Composition:'
          '\n The Division comprises Three Departments, namely:'
          '\n 1. Upstream Department (UPD)'
          '\n 2. Midstream Department (MID)'
          '\n 3. Refinery and Gas Department (RGD)',
      imageUrl:
      'assets/images/overview.png',
    ),
    const Service(
      id: '3',
      title:
      'Capacity Building',
      body:
      'The primary thrust of this unit is to drive competence-based, industry/job-ready and globally competitive Human Capital Development in the oil and gas industry and linkage sectors.'
          '\n \nThe Board’s Human Capital Development implementation strategy involves the following:  '
          '\n Direct Intervention Human Capital Development (DIHCD)'
          '\n The DIHCD involves the direct sponsorship of trainings by the Board for graduates and artisans in professional skills, technical and non-technical skills, vocational and entrepreneurial skills, soft/essential skills, and creative and innovative skills and competences.'
          '\n \n The Board engages accredited and reputable industry training providers, training organizations and educational institutions with requisite capacities to provide Direct Intervention Human Capital Development services. The training/service providers are selected based on their capacity and capabilities of the subject matter in line with the provisions of the Public Procurement Act of 2007.',
      imageUrl:
      'assets/images/overview.png',
    ),
    const Service(
      id: '4',
      title:
      'Monitoring & Evaluation',
      body:
      'Expatriate Quota Monitoring'
          '\n The EQ Monitoring unit of NCDMB is responsible for Monitoring and driving compliance with the provisions of the NOGICD Act with respect to deployment of Expatriates in the Nigerian Oil and Gas industry.'
          '\n \n Upstream Projects Monitoring'
          '\n Upstream Projects Monitoring undertakes effective monitoring of the implementation of the provisions of the NOGICD Act in relations to the activities of the upstream sector of the Nigerian oil and gas industry.'
          '\n \n Downstream Projects Monitoring'
          '\n The Gas and Downstream division consist of Gas, Crude oil marketing and investment opportunities, Refinery & Petrochemical department.',
      imageUrl:
      'assets/images/overview.png',
    ),

  ];

  @override
  List<Object?> get props => [
    id,
    title,
    body,
    imageUrl,
  ];
}
