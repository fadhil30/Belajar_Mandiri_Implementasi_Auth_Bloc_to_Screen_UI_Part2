import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key, required this.image});

  final File? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180.0,
          height: 180.0,
          decoration: BoxDecoration(
            color: const Color(0xff444B63),
            shape: BoxShape.circle,
            border: Border.all(
              width: 0.0,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: image != null
                ? Image(
                    image: FileImage(image!),
                    fit: BoxFit.cover,
                  )
                : const Image(
                    image: AssetImage(
                        '${AssetImageIconManager.assetPath}/profile_icon.png'),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const Positioned(
          bottom: -25.0,
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: Image(
              image: AssetImage(
                  '${AssetImageIconManager.assetPath}/icon_add_color.png'),
            ),
          ),
        ),
      ],
    );
  }
}
