import 'dart:math';

import 'package:cricstreak/Screens/CreateTeam/controller/CreateTeamController.dart';
import 'package:cricstreak/Utils/Shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({Key? key}) : super(key: key);

  @override
  State<CreateTeamPage> createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {

  CreateTeamController createTeamController = Get.put(CreateTeamController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFF021852),
            elevation: 0,
            title: Padding(
              padding:  EdgeInsets.only(left: Get.width/25,right: Get.width/25,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Players",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: "0",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            )),
                            TextSpan(text: "/11",style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ))
                          ]
                        )
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: pi/2,
                    child: const Text(
                      "-------",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "RCB",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),
                      Text(
                          "0",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "CSK",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),
                      Text(
                          "0",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: pi/2,
                    child: const Text(
                      "-------",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Credit Left",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),
                      Text(
                          "0",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 6),
                    child: Row(
                      children: [
                        Shape.shape.KajuKatriShape(selected: true,text: ""),
                        Shape.shape.KajuKatriShape(selected: true,text: "2"),
                        Shape.shape.KajuKatriShape(selected: false,text: "3"),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: ""),
                        Shape.shape.KajuKatriShape(selected: false,text: "11"),

                      ],
                    )
                  ),
                  TabBar(
                    isScrollable: true,
                    indicatorWeight: 5,
                    indicatorColor: const Color(0xFFFFD809),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                    tabs: [
                      Tab(
                        height: 90,
                        text: 'WK (1-4)',
                        icon: Container(
                          height: 53,
                          width: 53,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset('assets/image/keeper_icon.png',height: 25, width: 25,fit: BoxFit.fill,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  margin: const EdgeInsets.only(top: 5,),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFFFD809),
                                    shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        height: 90,
                        text: 'BAT (1-4)',
                        icon: Container(
                          height: 53,
                          width: 53,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset('assets/image/bat_icon.png',height: 25, width: 25,fit: BoxFit.fill,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  margin: const EdgeInsets.only(top: 5,),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFD809),
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        height: 90,
                        text: 'AR (1-4)',
                        icon: Container(
                          height: 53,
                          width: 53,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset('assets/image/ar_icon.png',height: 25, width: 25,fit: BoxFit.fill,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  margin: const EdgeInsets.only(top: 5,),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFD809),
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        height: 90,
                        text: 'BOWL (1-4)',
                        icon: Container(
                          height: 53,
                          width: 53,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset('assets/image/ball_icon.png',height: 25, width: 25,fit: BoxFit.fill,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  margin: const EdgeInsets.only(top: 5,),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFD809),
                                      shape: BoxShape.circle
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: createTeamController.Screens
          ),
          bottomNavigationBar: Container(
            height: 70,
            color: Colors.white,
            alignment: Alignment.center,
            padding:  EdgeInsets.symmetric(horizontal:  Get.width/30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(color: Colors.green,
                    elevation: 3,
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green,width: 1.5),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "PREVIEW TEAM",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(width: Get.width/30,),
                Expanded(
                  child: Card(
                    color: Colors.grey.shade300,

                    elevation: 3,
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5),

                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
