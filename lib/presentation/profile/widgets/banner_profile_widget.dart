// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BannerProfileWidget extends StatelessWidget {
  const BannerProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade400,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade600,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Featured Article",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: Text(
              "Natural mood regulation low or even absent in people with depression",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
