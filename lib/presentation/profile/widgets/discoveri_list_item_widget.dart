// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscoveriListItemWidget extends StatelessWidget {
  const DiscoveriListItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/image1.jpg"),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.vertical,
                children: [
                  Text(
                    "Nature",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Flexible(
                    child: Text(
                      "Let us plant more trees from this year",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
