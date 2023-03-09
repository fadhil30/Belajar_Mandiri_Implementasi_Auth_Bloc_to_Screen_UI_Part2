import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/explore_people_app_bar_widget.dart';
import 'package:sarang_app/src/common_widget/explore_people_button_widget.dart';
import 'package:sarang_app/src/common_widget/match_card_widget.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 24.0,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
            SizedBox(
              height: 50.0,
            ),
            Expanded(
              child: Column(
                children: const [
                  Expanded(child: MatchCardWidget()),
                  SizedBox(
                    height: 50.0,
                  ),
                  ExplorePeopleButtonWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
