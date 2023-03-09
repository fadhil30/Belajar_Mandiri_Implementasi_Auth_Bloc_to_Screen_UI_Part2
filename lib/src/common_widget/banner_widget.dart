import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sarang_app/src/common_widget/hero_widget.dart';
import 'package:sarang_app/src/common_widget/logo_and_tagline_widget.dart';
import 'package:sarang_app/src/common_widget/logo_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoAndTaglineWidget(),
        HeroWidget(),
      ],
    );
  }
}
