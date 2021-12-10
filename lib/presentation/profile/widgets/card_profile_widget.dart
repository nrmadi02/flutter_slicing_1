// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardProfileWidget extends StatelessWidget {
  const CardProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade400,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Container(
            height: 350,
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 70, right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: Offset(0, 10),
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  height: 230,
                  child: Row(
                    children: [
                      Container(
                        width: 205,
                        margin: EdgeInsets.only(bottom: 25),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Uno.jpg")),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sandiaga Uno",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Menteri Kemenparekraf",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Flexible(
                                child: Container(
                              height: 80,
                              margin: EdgeInsets.only(bottom: 25),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InformationValue(
                                    subTitle: "Articles",
                                    value: "34",
                                  ),
                                  InformationValue(
                                    subTitle: "Followers",
                                    value: "3.5M",
                                  ),
                                  InformationValue(
                                    subTitle: "Rating",
                                    value: "9.6",
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              child: Text(
                                "Chat",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.indigoAccent,
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InformationValue extends StatelessWidget {
  const InformationValue({
    Key? key,
    required this.subTitle,
    required this.value,
  }) : super(key: key);

  final String subTitle;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subTitle,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )
        ]);
  }
}
