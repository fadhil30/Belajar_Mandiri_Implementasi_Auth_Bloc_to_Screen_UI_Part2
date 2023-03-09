import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';
import '../theme_manager/style_manager.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
      margin: EdgeInsets.symmetric(
        vertical: 26.0,
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  '${AssetImageIconManager.assetPath}/glass_card_image.png'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabrina Anho',
                style: getWhiteTextstyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Text(
                '22, Traveler',
                style: getWhiteTextstyle(
                    fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        '${AssetImageIconManager.assetPath}/icon_profile.png'))),
          ),
        ],
      ),
    );
  }
}
