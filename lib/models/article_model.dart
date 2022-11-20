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
      'Sed sed molestie libero, et massa. Donec auctor vestibulum pellentesque',
      subtitle:
      'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
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
      'Aliquam ullamcorper ipsum, vel consequat sem finibus a. Donec lobortis',
      subtitle:
      'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Proin mattis nec lorem at rutrum. Curabitur sit augue vel',
      subtitle:
      'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
      'Donec lobortis lectus a iaculis rutrum. Vestibulum libero sit amet',
      subtitle:
      'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
      'assets/images/overview.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
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
