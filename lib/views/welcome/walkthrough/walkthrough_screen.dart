import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../widgets/svg_image.dart';
import '../../guest_area/home/guest_home_screen.dart';
import 'utils/data.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  int initialValue = 0;
  int progressIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
    pageController = PageController(initialPage: 0);
    progressIndex = 0;
  }

  double containerWidth() {
    return (150 / modal.length) * (progressIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              initialValue = value;
              progressIndex = value;
              debugPrint("$value");
            }),
            children: modal.map((e) {
              return Stack(
                children: [
                  //Image
                  Image.asset(
                    e.image.toString(),
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.35),
                    colorBlendMode: BlendMode.darken,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),

                  // DataEntry
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).viewPadding.top + 35),
                          //Text((e.heading ?? ""), style: const TextStyle(fontSize: 25, color: Colors.white)),
                          getAssetImage("welcome_logo.png", FetchPixels.getPixelHeight(430),  FetchPixels.getPixelWidth(100)),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.title.toString(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800)),
                            const SizedBox(height: 16),
                            Text(e.subtitle.toString(), style: const TextStyle(color: Colors.white)),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
          //Determinate LinearProgressIndicator & FAB
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                    AnimatedContainer(
                      duration: 1.seconds,
                      width: containerWidth(),
                      height: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xffEBAB26),
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                  ],
                ),
                // Spacer(),
                Container(
                  decoration: BoxDecoration(
                    //color: Colors.brown,
                    color: const Color(0xffEBAB26),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 50,
                  width: 50,
                  child: InkWell(
                    onTap: () {
                      if (initialValue < 2) {
                        setState(() => pageController.jumpToPage(initialValue + 1));
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const GuestHomeScreen()));
                      }
                    },
                    child: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
