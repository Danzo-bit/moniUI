// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/text_themes.dart';

class Cash extends StatelessWidget {
  const Cash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(
          "assets/background.png",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        toolbarHeight: 300,
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Available Balance",
                  style: smallText,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "₦ 234,430.00",
              style: bodyLargeText.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffFC4625)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/add-money.svg",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Add Money",
                        style: smallText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white.withOpacity(.2)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/share.svg",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Share your account",
                        style: smallText,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F1F5),
                            borderRadius: BorderRadius.circular(35)),
                        child: Image.asset("assets/Money.png"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Add money",
                        style: smallText,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F1F5),
                            borderRadius: BorderRadius.circular(35)),
                        child: Image.asset("assets/Icon.png"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Send money",
                        style: smallText,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(18),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F1F5),
                            borderRadius: BorderRadius.circular(35)),
                        child: Image.asset(
                          "assets/phone.png",
                          width: 32,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Buy airtime",
                        style: smallText,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F1F5),
                            borderRadius: BorderRadius.circular(35)),
                        child: Image.asset("assets/grid.png"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Pay bills",
                        style: smallText,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F1F5),
                            borderRadius: BorderRadius.circular(35)),
                        child: Image.asset("assets/Money.png"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Add money",
                        style: smallText,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Transactions",
                    style: bodyLargeText,
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right)
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Today",
                style: bodyText,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "subtitle",
                            style: bodyText,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₦ 300,000",
                            style: bodyText,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "In-Progress",
                            style: bodyText,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
