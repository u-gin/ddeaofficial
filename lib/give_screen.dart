import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'constants/color_system.dart';

class GiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            child: Text(
              "Give",
              style: TextStyle(
                color: ColorSystem.black,
                fontSize: 20.0,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: Get.height,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        isScrollControlled: true,
                        builder: (context) {
                          return StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return SingleChildScrollView(
                                primary: true,
                                child: bottomSheetLayout(setState),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorSystem.primaryLight,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: ColorSystem.primary,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Click on this button to give",
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontSize: 16.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomSheetLayout(StateSetter setState) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: ColorSystem.colorFromHex("#F2F4F5"),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: Get.width,
                color: ColorSystem.gray,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Tithe',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: Get.width,
                color: ColorSystem.gray,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Missions Offering',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: Get.width,
                color: ColorSystem.gray,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Thanksgiving',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: Get.width,
                color: ColorSystem.gray,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Donation',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        color: ColorSystem.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
