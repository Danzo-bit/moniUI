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
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Text(
                    "Get A business account",
                    style: bodyText,
                  ),
                  Spacer(),
                  Icon(Icons.expand_more)
                ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text(
                        "Naira Account Balance",
                        style: bodyText,
                      ),
                      Spacer(),
                      Icon(Icons.visibility_outlined)
                    ]),
                    Text(
                      "₦ 234,430.00",
                      style: bodyLargeText,
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
                                style: bodyText,
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
                                style: bodyText,
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
                                style: bodyText,
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
                                style: bodyText,
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
                                style: bodyText,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    // !Savings Card
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 78,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.centerRight,
                              image: AssetImage(
                                "assets/safe-bg.png",
                              )),
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Color(0xffFFF4F1), Color(0xffFFF4F1)])),
                      child: Stack(children: [
                        Positioned(
                            right: 110,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 78,
                              color: Color(0xffFFF4F1).withOpacity(.8),
                            )),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Create a savings plan",
                                  style: bodyText,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("Save for your lifestyle",
                                    style: bodyText),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: 80,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset("assets/piggy.png"),
                                  Positioned(
                                      bottom: 15,
                                      left: 45,
                                      child: Image.asset("assets/cash.png"))
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            )
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    //! Loan Card
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Color(0xffFFF4F1), Color(0xffFFF4F1)])),
                      child: Stack(children: [
                        Positioned(
                            right: 120,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 78,
                              color: Color(0xffFFF4F1).withOpacity(.8),
                            )),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Get a Moni loan",
                                  style: bodyText,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("Get the support you need",
                                    style: bodyText),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: 95,
                              child: Stack(
                                // alignment: Alignment.topRight,
                                children: [
                                  Positioned(
                                      top: 0,
                                      left: 4,
                                      child: Image.asset("assets/star.png")),
                                  Positioned(
                                      bottom: 25,
                                      right: -2,
                                      child: Image.asset("assets/circle.png")),
                                  Positioned(
                                      bottom: 15,
                                      left: 0,
                                      child: Image.asset("assets/star.png")),
                                  Positioned(
                                      bottom: 45,
                                      right: 18,
                                      child: Image.asset("assets/circle.png")),
                                  Positioned(
                                      bottom: 42,
                                      left: 20,
                                      child: Image.asset("assets/circle.png")),
                                  Positioned(
                                      bottom: -4,
                                      right: 0,
                                      child: Image.asset("assets/star.png")),
                                  Positioned(
                                      bottom: 12,
                                      right: 30,
                                      child: Image.asset("assets/star.png")),
                                  Positioned(
                                      right: 12,
                                      child: Image.asset("assets/hand.png",
                                          height: 45)),
                                  Positioned(
                                      bottom: 0,
                                      child: Image.asset("assets/coin.png"))
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 18,
                            // )
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Do More",
                      style: bodyText,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Set up your passcode and enable biometrics to sign in with one tap",
                      style: bodyText,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Complete setup",
                      style: bodyText,
                    ),
                    // !todo: add slide indicator
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My offers",
                          style: bodyLargeText,
                        ),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 105,
                                width: 164,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Color(0xffF6F6F9),
                                    image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/handtray.png"))),
                              ),
                              Container(
                                height: 95,
                                width: 164,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(18),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18)),
                                  color: Color(0xffF6F6F9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reserve plan",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Create a reserve plan",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Create plan",
                                        style: bodyText,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 105,
                                width: 164,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Color(0xffF6F6F9),
                                    image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/gang.png"))),
                              ),
                              Container(
                                height: 95,
                                width: 164,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(18),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18)),
                                  color: Color(0xffF6F6F9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Travel deals",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "20% off flights deals",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Get deal",
                                        style: bodyText,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 105,
                                width: 164,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Color(0xffF6F6F9),
                                    image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/handtray.png"))),
                              ),
                              Container(
                                height: 95,
                                width: 164,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(18),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18)),
                                  color: Color(0xffF6F6F9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reserve plan",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Create a reserve plan",
                                        style: bodyText,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Create plan",
                                        style: bodyText,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "My feed",
                            style: bodyLargeText,
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Victor Adedini ",
                                              style: bodyText,
                                            ),
                                            Text(
                                              "@Vicktor",
                                              style: bodyText,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Victor is inviting you to join “the lagos ballers” tribe group 💰",
                                          style: bodyText,
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Review Request",
                                              style: bodyText,
                                            ),
                                            Spacer(),
                                            Text(
                                              "3:45 PM Nov 4",
                                              style: bodyText,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Victor Adedini ",
                                              style: bodyText,
                                            ),
                                            Text(
                                              "@Vicktor",
                                              style: bodyText,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Victor is inviting you to join “the lagos ballers” tribe group 💰",
                                          style: bodyText,
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Review Request",
                                              style: bodyText,
                                            ),
                                            Spacer(),
                                            Text(
                                              "3:45 PM Nov 4",
                                              style: bodyText,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Victor Adedini ",
                                              style: bodyText,
                                            ),
                                            Text(
                                              "@Vicktor",
                                              style: bodyText,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Victor is inviting you to join “the lagos ballers” tribe group 💰",
                                          style: bodyText,
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Review Request",
                                              style: bodyText,
                                            ),
                                            Spacer(),
                                            Text(
                                              "3:45 PM Nov 4",
                                              style: bodyText,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Victor Adedini ",
                                              style: bodyText,
                                            ),
                                            Text(
                                              "@Vicktor",
                                              style: bodyText,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Victor is inviting you to join “the lagos ballers” tribe group 💰",
                                          style: bodyText,
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Review Request",
                                              style: bodyText,
                                            ),
                                            Spacer(),
                                            Text(
                                              "3:45 PM Nov 4",
                                              style: bodyText,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
