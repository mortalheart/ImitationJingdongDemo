import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imitation_jingdong/common/index.dart';


class MenuItem extends StatelessWidget {
  const MenuItem(
      this.menuData, {
        super.key,
      });

  final MenuRootEntity menuData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if ((menuData.h5url ?? "").isNotEmpty) {
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CachedNetworkImage(
            width: 40,
            height: 40,
            fit: BoxFit.cover,
            imageUrl: menuData.menuIcon.toString(),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 4),
            child: Text(
              menuData.menuName.toString(),
              style: const TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}