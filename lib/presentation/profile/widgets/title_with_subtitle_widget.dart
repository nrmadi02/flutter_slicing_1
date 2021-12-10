// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TitleWithSubtitleWidget extends StatelessWidget {
  const TitleWithSubtitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notable works",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Based on the popularity of articles",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
