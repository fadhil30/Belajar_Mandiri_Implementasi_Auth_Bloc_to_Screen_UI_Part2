import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelName,
    required this.hintext,
    required this.controller,
    this.isObsecure = false,
  });

  final String labelName;
  final String hintext;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextstyle(),
        ),
        SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextstyle(),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: AppPadding.p15, horizontal: AppPadding.p30),
            filled: true,
            fillColor: ColorManager.secondary,
            hintText: hintext,
            hintStyle: getBlack30Textstyle(),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
        SizedBox(
          height: 14.0,
        )
      ],
    );
  }
}
