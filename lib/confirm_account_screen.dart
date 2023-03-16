import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddea_official/constants/color_system.dart';
import 'package:ddea_official/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/button_template.dart';
import 'models/users.dart';

class ConfirmAccountScreen extends StatelessWidget {
  static const String routeName = 'confirmAccount';
  late Users users = Users();
  dynamic dataFromPreviousScreen = Get.arguments;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Confrim Account',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: ColorSystem.secondary,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      dataFromPreviousScreen[0],
                      style: TextStyle(
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: ColorSystem.secondary,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      dataFromPreviousScreen[1],
                      style: TextStyle(
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      color: ColorSystem.secondary,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      dataFromPreviousScreen[2],
                      style: TextStyle(
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment,
                      color: ColorSystem.secondary,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      dataFromPreviousScreen[3],
                      style: TextStyle(
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment,
                      color: ColorSystem.secondary,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      dataFromPreviousScreen[4],
                      style: TextStyle(
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonTemplate(
                    buttonName: "CANCEL",
                    buttonColor: ColorSystem.white,
                    buttonWidth: 150,
                    buttonAction: () {
                      Get.back();
                    },
                    fontColor: ColorSystem.secondary,
                  ),
                  ButtonTemplate(
                    buttonName: "FINISH",
                    buttonColor: ColorSystem.secondary,
                    buttonWidth: 150,
                    buttonAction: () {
                      //addMember();
                      Get.to(() => WelcomeScreen());
                    },
                    fontColor: ColorSystem.white,
                  ),
                ],
              )
            ]),
          ),
        ));
  }

  Future addMember() async {
    final reference = FirebaseFirestore.instance.collection("members").doc();
    users = Users(
      id: reference.id,
      fullName: dataFromPreviousScreen[0],
      email: dataFromPreviousScreen[1],
      phone: dataFromPreviousScreen[2],
      designation: dataFromPreviousScreen[3],
      connectGroup: dataFromPreviousScreen[4],
    );
    final jsonData = users.toJson();
    await reference.set(jsonData);

    Get.to(() => WelcomeScreen(), arguments: reference.id);
  }
}
