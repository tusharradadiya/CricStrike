import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricstreak/Utils/firehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CricketPage extends StatefulWidget {
  const CricketPage({Key? key}) : super(key: key);

  @override
  State<CricketPage> createState() => _CricketPageState();
}

class _CricketPageState extends State<CricketPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List l1 = [];
                // DocumentSnapshot? docs = snapshot.data.docs;
                // var data = docs!.data();
                // print("===================== $data");
                // for(var doc in docs.)
                //   {
                //     Map l2 = doc.data();
                //     l1.add(l2);
                //   }
                return ListView.builder(shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.toNamed('tabbar');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    "Ipl - 2023",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Live",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.notifications_none,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    "T1 name",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "T2 Name",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                          "assets/image/csk.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "CSK",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          child: Image.asset(
                                            "assets/image/clock.png",
                                            fit: BoxFit.cover,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const Text(
                                          "1h 54min",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  //Spacer(),
                                  Row(
                                    children: [
                                      const Text(
                                        "RCB",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                          "assets/image/rcb.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 35,
                              decoration: const BoxDecoration(
                              color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight:  Radius.circular(15),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    "Rs.11 Lakh",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.live_tv,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //child: Text("${l1[index]}"),
                      ),
                    );
                  },
                  itemCount: 4,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
              return const Center(child: CircularProgressIndicator(color: Colors.white,));
            },
            stream: FireHelper.fireHelper.GetData(),
          )
        ],
      ),
    );
  }
}
