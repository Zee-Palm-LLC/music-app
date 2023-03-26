// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_like_button.dart';

class MusicTile extends StatelessWidget {
  final int i;
  final VoidCallback onTap;
  const MusicTile({
    Key? key,
    required this.i,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      dense: true,
      leading: i <= 9
          ? Text(
              '0$i',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          : Text(i.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
      title: const Text("Mi Amor",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
      subtitle: const Text("Mr 6ix9ine 02 :43min",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          )),
      trailing:
          const SizedBox(height: 35, width: 35, child: CustomLikeButton()),
    );
  }
}
