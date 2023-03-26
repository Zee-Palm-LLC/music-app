import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/musicView/music_view.dart';
import 'package:music_app/profile/components/user_info_card.dart';

import 'components/custom_buttons.dart';
import 'components/music_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded, color: Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade900, Colors.black])),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 270,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const UserInfoCard(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(child: PrimaryButton()),
                  SizedBox(width: 10),
                  Expanded(child: SecondaryButton())
                ],
              ),
              const SizedBox(height: 30),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, i) {
                    return MusicTile(
                      onTap: (){
                        Get.to(()=>const MusicView());
                      },
                      i: i,
                    );
                  },
                  separatorBuilder: (ctx, i) =>
                      const Divider(color: Colors.white),
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
