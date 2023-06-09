import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTeamsPage extends StatefulWidget {
  const MyTeamsPage({Key? key}) : super(key: key);

  @override
  State<MyTeamsPage> createState() => _MyTeamsPageState();
}

class _MyTeamsPageState extends State<MyTeamsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "  Match\nstart in",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "03h 15m 02s",
              style: TextStyle(
                  color: Color(0xFFEFD473),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 35,
              width: 105,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(6)),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "Remind Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Teams (1)",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 1.5)),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  dropdownColor: const Color(0xff021852),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.5,
                      fontWeight: FontWeight.w500),
                  iconEnabledColor: Colors.white,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Sort By Last Edit"),
                      value: "Sort By Last Edit",
                    ),
                    DropdownMenuItem(
                      child: Text("Sort By Previous Edit"),
                      value: "Sort By Previous Edit",
                    ),
                  ],
                  onChanged: (value) {},
                  value: "Sort By Last Edit",
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Get.toNamed('team_Preview');
          },
          child: Container(
            height: 230,
            decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(9),
            ),
            // alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFF007432),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9))),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF0B8640),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF007432),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF0B8640),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF007432),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF0B8640),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF007432),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF0B8640),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFF007432),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(9),
                                bottomRight: Radius.circular(9))),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12,top: 10,left: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Tiget XII(T1)",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.share,color: Colors.black,size: 15,),
                                const Text(
                                  "Share Team",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10
                                  ),
                                ),
                                Image.asset("assets/image/cryptocurrency.png",height: 15,width: 15,fit: BoxFit.fill,)
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                // color: Colors.red,
                                height: 160,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: double.infinity,
                                        // color: Colors.black87,
                                        child: Stack(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 6.0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: CircleAvatar(
                                                  radius: 40,
                                                  backgroundColor: Colors.white,
                                                  backgroundImage: NetworkImage("https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/2.png"),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 30,
                                                width: 70,
                                                margin: const EdgeInsets.only(top: 21),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(6)
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "V. Kohli",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 21,
                                                width: 21,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "C",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: double.infinity,
                                        // color: Colors.green,
                                        child: Stack(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 6.0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: CircleAvatar(
                                                  radius: 40,
                                                  backgroundColor: Colors.white,
                                                  backgroundImage: NetworkImage("https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/94.png"),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 30,
                                                width: 70,
                                                margin: const EdgeInsets.only(top: 21),
                                                decoration: BoxDecoration(
                                                    color: const Color(0xFF021852),
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "F. Plessis",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 21,
                                                width: 21,
                                                decoration: const BoxDecoration(
                                                    color: Color(0xFF021852),
                                                    shape: BoxShape.circle
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  "VC",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          ),
                          Container(
                            // color: Colors.black87,
                            height: 160,
                            width: 145,
                            padding: const EdgeInsets.all(6),
                            margin: const EdgeInsets.only(top: 15),
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "RCB 6",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14
                                        ),
                                      ),
                                      const Text(
                                        "CSK 5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 6,),
                                const Divider(thickness: 1.5,color: Colors.white,),
                                const SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "WK",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        const Text(
                                          "2",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "AR",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "BAT",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "BOWL",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(9),
                            bottomRight: Radius.circular(9))
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFF021852),
                                shape: BoxShape.circle
                              ),
                              margin: const EdgeInsets.only(right: 6),
                              alignment: Alignment.center,
                              child: const Icon(Icons.visibility,color: Colors.white, size: 21,),
                            ),
                            const Text(
                              "Preview",
                              style: TextStyle(
                                color: Color(0xFF021852),
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          // width: 80,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFFFE68B),
                                    Color(0xFFFFD700)
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF021852),
                                    shape: BoxShape.circle
                                ),
                                margin: const EdgeInsets.only(right: 6),
                                alignment: Alignment.center,
                                child: const Icon(Icons.edit,color: Colors.white, size: 14,),
                              ),
                              const Text(
                                "Edit",
                                style: TextStyle(
                                    color: Color(0xFF021852),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 130,
          margin: const EdgeInsets.only(top: 15,right: 12,left: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF021852),
            borderRadius: BorderRadius.circular(15)
          ),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Joined Contests",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Click to Expand",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down,color: Colors.white, size: 18,)
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Divider(thickness: 1.2, color: Colors.grey,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Improve your winning total by joining\nmore contests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Join Contest",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Get.toNamed('create_Team');
          },
          child: Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFE68B),
                      Color(0xFFFFD700)
                    ]
                ),
              borderRadius: BorderRadius.circular(9)
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.groups_rounded,color: Color(0xFF021852), size: 25,),
                const Text(
                  "Create Team",
                  style: TextStyle(
                    color: Color(0xFF021852),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
