import 'package:flutter/material.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/profile/components/custom_like_button.dart';

class MusicView extends StatelessWidget {
  const MusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Now Playing",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.queue_music_outlined, color: Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade900, Colors.black])),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange.withOpacity(0.5),
                            blurRadius: 0,
                            spreadRadius: 5)
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 140),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomLikeButton(),
                          Column(
                            children: const [
                              Text(
                                "Tekashi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 34,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Mr. 6ix9ine",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.more_horiz,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      Lottie.asset('assets/wave.json',width: double.maxFinite),
                      // PolygonWaveform(
                      //   maxDuration: const Duration(minutes: 2, seconds: 14),
                      //   elapsedDuration:
                      //       const Duration(minutes: 2, seconds: 14),
                      //   samples: [],
                      //   height: 50,
                      //   width: double.maxFinite,
                      //   inactiveColor: Colors.grey,
                      //   invert: false,
                      //   absolute: false,
                      //   activeColor: Colors.white,
                      //   showActiveWaveform: true,
                      //   style: PaintingStyle.stroke,
                      // ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.shuffle,
                            color: Colors.white,
                          ),
                          const Icon(
                            Icons.arrow_left_sharp,
                            size: 40,
                            color: Colors.white,
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.orange,
                            
                            elevation: 10,
                            child: const Icon(
                                Icons.play_circle_outline_outlined,
                                size: 35,
                                color: Colors.white),
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.white,
                          ),
                          const Icon(
                            Icons.repeat_rounded,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
