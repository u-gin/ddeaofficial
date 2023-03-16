import 'package:ddea_official/constants/color_system.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            child: Text(
              "Hi, Michael Yeboah",
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
      body: GestureDetector(
        onTap: () {
          debugPrint("pressed");
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Theme of the year",
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontSize: 15.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorSystem.hintTextColor),
                    /* child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      /* child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/coptheme.jpeg"),
                      ), */
                    ), */
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Scripture of the day",
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontSize: 15.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorSystem.hintTextColor),
                    /* child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      /* child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/coptheme.jpeg"),
                      ), */
                    ), */
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Latest news",
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontSize: 15.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorSystem.hintTextColor),
                    /* child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      /* child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/coptheme.jpeg"),
                      ), */
                    ), */
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Scripture of the day",
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontSize: 15.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorSystem.hintTextColor),
                    /* child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      /* child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/coptheme.jpeg"),
                      ), */
                    ), */
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
