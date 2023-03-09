import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nanda',
            style: getWhiteTextstyle(
                fontSize: 28.0, fontWeight: FontWeightManager.semiBold),
          ),
          Text(
            '20, UI/UX Designer',
            style: getBlackTextstyle(),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            'I love solving problem in terms of finance,\nbusiness, and any case. With you, we will\nsolve all world problems.',
            style: getWhiteTextstyle(),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
