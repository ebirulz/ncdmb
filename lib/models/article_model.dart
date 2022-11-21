import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
      'Nigerian Content Development & Monitoring Board Overview',
      subtitle:
      '',
      body:
      'The Nigerian Content Development and Monitoring Board (NCDMB) was established in 2010 by the Nigerian Oil and Gas Industry Content Development (NOGICD) Act. NCDMB is vested with the mandate to make procedures that will guide, monitor, coordinate and implement the provisions of the NOGICD Act signed into law on April 22, 2010. '
          '\n \nBrief History of NCDMB'
          '\n The foundation for NCDMB was laid in 2001 when former President Olusegun Obasanjo inaugurated the Presidential Committee on Local Content in the Oil and Gas Industry. He mandated the Nigerian National Petroleum Corporation (NNPC) to drive the policy and set certain targets.'
          '\n \n  In its efforts to implement the policy, the national oil company set up the Nigerian Content Division within its system and issued some Nigerian Content directives to industry stakeholders.'
          '\n \n Since there was no force of law behind the Nigerian Content directives, operators of the industry found it convenient to comply on best endeavor basis. This situation provided the impetus for the Ministry of Petroleum Resources, NNPC and other industry stakeholders to work closely with the National Assembly to develop the Nigerian Oil and Gas Industry Content Development (NOGICD) Bill.'
          '\n \n During the succeeding administration of late President Umaru Yar’Adua/Goodluck Jonathan, the National Assembly passed the NOGICD Bill. President Goodluck Jonathan assented the Bill into law on April 22 and this gave birth to the NCDMB.'
          '\n \n Dr. Ernest Nwapa, former staff of the Nigerian Content Division of NNPC served as the pioneer Executive Secretary from April 2010 to May l 2015. He was succeeded by Arc Denzel Kentebe. In September 2016, Engr. Simbi Kesiye Wabote was appointed as the 3rd substantive Executive Secretary of the Board.',
      author: 'NCDMB',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'NCDMB Overview',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
      'Vision and Mission Statement',
      subtitle:
      '',
      body:
      'Vision'
          '\n To be the catalyst for the industrialization of the Nigerian Oil and Gas Industry and its linkage sectors.'
          '\n \n Our Mission'
          '\n To promote the development and utilization of in-country capacities for the industrialization of Nigeria through the effective implementation of the Nigerian Content Act',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
      'Corporate Social Responsibility',
      subtitle:
      '',
      body:
      'CSR Policy Statement'
          '\n As A Public Sector Agency Established by Law, The Nigeria Content Development and Monitoring Board (“The Board) Shall Only Undertake, Support or Facilitate the Execution of Corporate Social Responsibility (CSR) Project Which Have Clear Potential to Meet Any Of Its Statutory Mandate, Particularly Within The Oil Producing States Of Nigeria.'
          '\n \n 2. CSR Objectives'
          '\n The board may undertake, support or facilitate specific projects or programs to foster goodwill and corporate visibility especially science and technical education initiatives, job creation, capacity building, public enlightenment and community participation programs. Eligible CSR project or program must correlate with the board’s statutory mandate or have potential to advance the fulfilment government’s national economic aspiration in the petroleum industry through the local content act.',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
  ];

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    createdAt,
  ];
}
