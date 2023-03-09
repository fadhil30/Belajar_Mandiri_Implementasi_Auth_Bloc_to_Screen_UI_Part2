import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget(
      {super.key,
      this.dimension = 50,
      required this.iconPath,
      required this.onTap});

  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: dimension,
        width: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  AssetImage('${AssetImageIconManager.assetPath}/$iconPath')),
        ),
      ),
    );
  }
}
