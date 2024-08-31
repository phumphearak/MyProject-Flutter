import 'package:flutter/material.dart';
import 'package:moneyapp/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Wsk Finance".toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Hind',
                  fontSize: 20,
                  color: AppColors.logo),
            ),
            actionsIconTheme: IconThemeData(color: AppColors.iconColors),
            actions: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_active_outlined),
                        color: Colors.blueAccent,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_circle_sharp,
                            size: 30,
                          ))
                    ],
                  )),
            ]),
        drawer: const Drawer(),
        body: Container(
          color: AppColors.mainBgColor,
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    height: 190,
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                        color: AppColors.cardTop,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    "Income",
                                    style: TextStyle(
                                        fontFamily: 'Hind',
                                        color: AppColors.textWhite,
                                        fontSize: 22),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: const EdgeInsets.only(
                                      left: 10.0, top: 8, right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(180),
                                      ),
                                      color: AppColors.logo),
                                )
                              ]),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                          child: Text(
                            "Balance",
                            style: TextStyle(
                                fontFamily: "Hind",
                                fontSize: 18,
                                color: AppColors.textWhite70),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                          margin: const EdgeInsets.only(top: 30),
                          child: Stack(children: [
                            Text(
                              "\$ 1239,0.00",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textWhite.withOpacity(0.9)),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0, top: 60),
                                child: Text(
                                  "+ \$3.50 from last month",
                                  style: TextStyle(
                                      fontFamily: "Hind",
                                      fontSize: 16,
                                      color: AppColors.textWhite70),
                                ))
                          ]),
                        ),
                        Positioned(
                          top: 10,
                          right: 20,
                          bottom: 10,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor:
                                AppColors.mainBgColor.withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipOval(
                                  child: Icon(
                                Icons.arrow_downward_outlined,
                                color: AppColors.logo,
                                size: 55,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // buttom
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                //color: AppColors.iconBg,
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  onTap: () {},
                                  child: Icon(
                                    Icons.arrow_outward,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.call_received_outlined,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Received",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.attach_money_sharp,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.qr_code,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Scan",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                //color: AppColors.iconBg,
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  onTap: () {},
                                  child: Icon(
                                    Icons.arrow_outward,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.call_received_outlined,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Received",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.attach_money_sharp,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                shadowColor: AppColors.mainBgColor,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: Icon(
                                    Icons.qr_code,
                                    size: 25,
                                    color: AppColors.iconColors,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Scan",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 14,
                                  color: AppColors.textSmall),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  // === Transition ====//

                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Transations",
                            style: TextStyle(
                                fontFamily: "Hind",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textBlack),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontSize: 16,
                                  color: AppColors.linkText),
                            ),
                          ),
                        ],
                      )),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      shadowColor: AppColors.mainBgColor,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    color: AppColors.colorAppbar),
                                child:
                                    const Icon(Icons.money_off_csred_rounded),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Top up",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Tun 1:30 PM",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "+ \$300.00",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            )),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            )),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      shadowColor: AppColors.mainBgColor,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    color: AppColors.colorAppbar),
                                child:
                                    const Icon(Icons.money_off_csred_rounded),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Top up",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Tun 1:30 PM",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "+ \$300.00",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            )),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            )),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      shadowColor: AppColors.mainBgColor,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    color: AppColors.colorAppbar),
                                child:
                                    const Icon(Icons.money_off_csred_rounded),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Top up",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Tun 1:30 PM",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "+ \$300.00",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            )),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            )),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      shadowColor: AppColors.mainBgColor,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    color: AppColors.colorAppbar),
                                child:
                                    const Icon(Icons.money_off_csred_rounded),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Top up",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Tun 1:30 PM",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "+ \$300.00",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            )),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            )),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      shadowColor: AppColors.mainBgColor,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    color: AppColors.colorAppbar),
                                child:
                                    const Icon(Icons.money_off_csred_rounded),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Top up",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Tun 1:30 PM",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "+ \$300.00",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textBlack87),
                                            )),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  fontFamily: "Hind",
                                                  color: AppColors.textBlack87),
                                            )),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
