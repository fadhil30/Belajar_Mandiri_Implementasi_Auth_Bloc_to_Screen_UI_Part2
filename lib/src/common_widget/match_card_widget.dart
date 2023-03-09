import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';

import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    '${AssetImageIconManager.assetPath}/people_love2_image.png'),
              ),
              border: Border.all(
                  width: 10,
                  color: ColorManager.secondary,
                  strokeAlign: BorderSide.strokeAlignInside),
              borderRadius: BorderRadius.circular(70)),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
