import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/people_loved_card_widget.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = '/people-loved';
  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'People You\nLoved',
          textAlign: TextAlign.center,
          style: getWhiteTextstyle(
              fontSize: 20.0, fontWeight: FontWeightManager.semiBold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30.0,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const PeopleLovedCardWidget();
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
