// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:belajar_flutter/presentation/profile/widgets/banner_profile_widget.dart';
import 'package:belajar_flutter/presentation/profile/widgets/card_profile_widget.dart';
import 'package:belajar_flutter/presentation/profile/widgets/discoveri_list_item_widget.dart';
import 'package:belajar_flutter/presentation/profile/widgets/title_with_subtitle_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardProfileWidget(),
            SizedBox(
              height: 20,
            ),
            TitleWithSubtitleWidget(),
            discoveryListMethod(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BannerProfileWidget(),
            )
          ],
        ),
      ),
    );
  }

  Widget discoveryListMethod() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      height: 290,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return DiscoveriListItemWidget();
          }),
    );
  }
}
