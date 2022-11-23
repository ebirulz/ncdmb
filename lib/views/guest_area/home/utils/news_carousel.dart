import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:ncdmb/views/guest_area/news/news1.dart';

class NewsCarouselSlider extends StatefulWidget {
  const NewsCarouselSlider({Key? key}) : super(key: key);

  @override
  State<NewsCarouselSlider> createState() => _NewsCarouselSliderState();
}

class _NewsCarouselSliderState extends State<NewsCarouselSlider> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const AssetImage(
        'assets/images/slide1.jpg',
      ),
      title:
      'Wabote Commissions GIL Automation’s Factory, Charges Oil Firms On Diversification, Energy Transition',
      titleTextStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      onImageTap: (i) {
      },
    ),
    CarouselItem(
      image: const AssetImage(
        'assets/images/slide2.jpg',
      ),
      title: 'NCDMB Hosts R&D Roundtable, Gets Huge Backing From Industry Operators',
      titleTextStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const ExactAssetImage('assets/images/slide3.jpg'),
      title: 'Wabote, Jonathan, 42 Others Bag National Excellence Awards In Public Service',
      titleTextStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const ExactAssetImage('assets/images/slide4.jpg'),
      title: 'African Content: Wabote Seeks Collaboration In Projects, Capacitydevelopment, R&D',
      titleTextStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: itemList,
          height: 250,
          subHeight: 50,
          width: (MediaQuery
              .of(context)
              .size
              .width),
          autoplay: true,
          showText: true,
        ),
      ],
    );
  }
newsOne(){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewsOne()));
}
}