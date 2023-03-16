import 'package:ddea_official/components/button_template.dart';
import 'package:ddea_official/confirm_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'constants/color_system.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  static const String routeName = "createAccount";

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String designationValue = "Please select";
  String connectGroupValue = "Please select";
  List<List<dynamic>> dataFromPreviousPage = <List>[Get.arguments];

  var designation = [
    "Please select",
    "Presilding Elder",
    "Elder",
    "Deacon",
    "Deaconess",
    "Member"
  ];

  var connectGroup = [
    "Please select",
    "Elohim",
    "Rapha",
    "El Shaddai",
    "Nissi",
    "Shalom",
  ];

  void migrateData() {
    List args = dataFromPreviousPage[0];
    if (designationValue == "Please select" ||
        connectGroupValue == "Please select") {
      Get.snackbar("Warning", "All fields are required",
          backgroundColor: ColorSystem.secondary,
          colorText: ColorSystem.white,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      args.add(
        designationValue,
      );
      args.add(
        connectGroupValue,
      );

      Get.to(ConfirmAccountScreen(), arguments: args);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DESIGNATION',
                  style: TextStyle(
                    color: ColorSystem.secondary,
                    fontSize: 13.0,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: ColorSystem.gray,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        // Initial Value
                        value: designationValue,
                        isDense: false,
                        isExpanded: true,
                        style: TextStyle(
                          color: ColorSystem.black,
                          fontSize: 14.0,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w500,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        // Array list of items
                        items: designation.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                fontFamily: "Metropolis",
                                color: ColorSystem.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            designationValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'CONNECT GROUP',
                  style: TextStyle(
                    color: ColorSystem.secondary,
                    fontSize: 13.0,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: ColorSystem.gray,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: connectGroupValue,
                        isDense: false,
                        isExpanded: true,
                        style: TextStyle(
                          color: ColorSystem.black,
                          fontSize: 14.0,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w500,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        // Array list of items
                        items: connectGroup.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                fontFamily: "Metropolis",
                                color: ColorSystem.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),

                        onChanged: (String? newValue) {
                          setState(() {
                            connectGroupValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonTemplate(
                      buttonName: "FINISH",
                      buttonColor: ColorSystem.secondary,
                      buttonWidth: 150,
                      buttonAction: () {
                        migrateData();
                      },
                      fontColor: ColorSystem.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
