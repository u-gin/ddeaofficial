import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/color_system.dart';
import 'models/users.dart';

class WelcomeScreen extends StatelessWidget {
  dynamic dataFromPreviousScreen = Get.arguments;

  /* Stream<List<Users>> getMember() {
    return FirebaseFirestore.instance.collection("members").snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => Users.fromJson(doc.data())).toList());
  } */

  Future<Users?> getUser() async {
    final userDetails = FirebaseFirestore.instance
        .collection("members")
        .doc('CZ9mQKyyZYrfizoI5htg');
    final snapshot = await userDetails.get();
    if (snapshot.exists) {
      print('something');
      return Users.fromJson(snapshot.data()!);
    } else {
      print('empty');
      return Users();
    }
  }

  @override
  Widget build(BuildContext context) {
    print(dataFromPreviousScreen);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hi, ',
                              style: TextStyle(
                                color: ColorSystem.black,
                                fontSize: 22.0,
                                fontFamily: "Metropolis",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            FutureBuilder<Users?>(builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text(
                                  "Error",
                                  style: TextStyle(
                                    color: ColorSystem.secondary,
                                    fontSize: 22.0,
                                    fontFamily: "Metropolis",
                                    fontWeight: FontWeight.w700,
                                  ),
                                );
                              } else if (snapshot.hasData) {
                                final userData = snapshot.data;
                                return Text(
                                  userData!.fullName ?? "Test",
                                  style: TextStyle(
                                    color: ColorSystem.secondary,
                                    fontSize: 22.0,
                                    fontFamily: "Metropolis",
                                    fontWeight: FontWeight.w700,
                                  ),
                                );
                              } else {
                                return Container(
                                  height: 20,
                                  width: 20,
                                  child: const CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Text(
                      'WELCOME TO COP DDEAs \n OFFICIAL APPLICATION.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorSystem.secondary,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: Text(
                        'Please stay tuned as we bring your way amazing Godly experiences on this platform',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorSystem.black,
                          fontSize: 18.0,
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
