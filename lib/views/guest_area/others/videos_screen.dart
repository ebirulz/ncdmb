import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../utils/constant.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/widget_utils.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  late String videoTitle;
  // Url List
  final List<String> _videoUrlList = [
    'https://youtu.be/oHjfVJToJws',
    'https://youtu.be/mVD_0-8pD78',
    'https://youtu.be/kQzrjtuTwqk',
    'https://youtu.be/yrxRcdTKubI',
  ];

  List <YoutubePlayerController> lYTC = [];

  Map<String, dynamic> cStates = {};

  @override
  void initState() {
    super.initState();
    fillYTlists();
  }

  fillYTlists(){
    for (var element in _videoUrlList) {
      String _id = YoutubePlayer.convertUrlToId(element)!;
      YoutubePlayerController _ytController = YoutubePlayerController(
        initialVideoId: _id,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
          captionLanguage: 'en',
        ),
      );

      _ytController.addListener(() {
        print('for $_id got isPlaying state ${_ytController.value.isPlaying}');
        if (cStates[_id] != _ytController.value.isPlaying) {
          if (mounted) {
            setState(() {
              cStates[_id] = _ytController.value.isPlaying;
            });
          }
        }
      });

      lYTC.add(_ytController);
    }
  }

  @override
  void dispose() {
    for (var element in lYTC) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double setVal = FetchPixels.getDefaultHorSpace(context);
    return Scaffold(
      body: ListView(
        children: [
          getVerSpace(FetchPixels.getPixelHeight(20)),
          getPaddingWidget(
              EdgeInsets.symmetric(horizontal: setVal),
              gettoolbarMenu(context, "back.svg", () {
                Constant.backToPrev(context);
              },
                  istext: true,
                  title: "Videos",
                  fontsize: 24,
                  weight: FontWeight.w900,
                  textColor: Colors.black)),
          getVerSpace(FetchPixels.getPixelHeight(32)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: _videoUrlList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                YoutubePlayerController _ytController = lYTC[index];
                String _id = YoutubePlayer.convertUrlToId(_videoUrlList[index])!;
                String curState = 'Loading';
                if (cStates[_id] != null) {
                  curState = cStates[_id]? 'playing':'paused';
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 220.0,
                        decoration: const BoxDecoration(
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                          child: YoutubePlayer(
                            controller: _ytController,
                            showVideoProgressIndicator: true,
                            progressIndicatorColor: Colors.lightBlueAccent,
                            bottomActions: [
                              CurrentPosition(),
                              ProgressBar(isExpanded: true),
                              FullScreenButton(),
                            ],
                            onReady: (){
                              print('onReady for $index');
                            },
                            onEnded: (YoutubeMetaData _md) {
                              _ytController.seekTo(const Duration(seconds: 0));
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Text(curState, textScaleFactor: 1.5,),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
