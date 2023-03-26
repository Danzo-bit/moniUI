// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moni_ui/config/text_themes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 4.5,
            flexibleSpace: LayoutBuilder(builder: (context, constraint) {
              top = constraint.biggest.height;
              return FlexibleSpaceBar(
                title: top >= MediaQuery.of(context).size.height / 6
                    ? AnimatedOpacity(
                        curve: Curves.easeOut,
                        duration: Duration(milliseconds: 300),
                        opacity: top >= MediaQuery.of(context).size.height / 6
                            ? 1.0
                            : 0.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.shopify.com/s/files/1/0150/0643/3380/products/SB-Standees-Spong-1_800x.jpg?v=1603744567"),
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/support.svg",
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Good afternoon,",
                                      style: smallLightText,
                                    ),
                                    Text(
                                      "@yoncee",
                                      style: smallText,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white.withOpacity(.3)),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/coin.svg",
                                        width: 12,
                                        height: 12,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Cashback",
                                        style: smallText,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : AnimatedOpacity(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 400),
                        opacity:
                            top <= MediaQuery.of(context).size.height / 6.02
                                ? 1.0
                                : 0.0,
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/background.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://cdn.shopify.com/s/files/1/0150/0643/3380/products/SB-Standees-Spong-1_800x.jpg?v=1603744567"),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "@yoncee",
                                    style: smallText,
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.white.withOpacity(.3)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/coin.svg",
                                          width: 12,
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Cashback",
                                          style: smallText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                centerTitle: true,
                background: Image.asset(
                  "assets/background.png",
                  fit: BoxFit.cover,
                ),
              );
            }),
            centerTitle: true,
            backgroundColor: Colors.black,
            toolbarHeight: 90,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        height: 200,
                        color: Colors.grey,
                        child: Column(
                          children: [Text(index.toString()), Divider()],
                        ),
                      ),
                  childCount: 20))
        ],
      ),
    );
  }
}
