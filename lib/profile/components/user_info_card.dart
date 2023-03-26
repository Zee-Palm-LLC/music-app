import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: double.maxFinite,
      height: 200,
      borderRadius: 10,
      blur: 17,
      border: 0,
      alignment: Alignment.center,
      borderGradient: LinearGradient(
          colors: [Colors.white.withAlpha(45), Colors.white.withAlpha(45)]),
      linearGradient: LinearGradient(
          colors: [Colors.white.withAlpha(45), Colors.white.withAlpha(45)]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Tattle Tales",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.white),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "13",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("Songs",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "113M",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("Followers",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("Likes",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
