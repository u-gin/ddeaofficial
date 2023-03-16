import 'package:ddea_official/components/button_template.dart';
import 'package:ddea_official/components/text_field_template.dart';
import 'package:ddea_official/constants/color_system.dart';
import 'package:ddea_official/controllers/data_uploader.dart';
import 'package:ddea_official/create_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController nameController, emailController, phoneController;

  late String fullName, email, phone;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    super.initState();
  }

  void migrateData() {
    fullName = nameController.text.toString();
    email = emailController.text.toString();
    phone = phoneController.text.toString();
    if (fullName == '' || email == '' || phone == '') {
      Get.snackbar("Warning", "All fields are required",
          backgroundColor: ColorSystem.secondary,
          colorText: ColorSystem.white,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.to(CreateAccountScreen(), arguments: [
        fullName,
        email,
        phone,
      ]);
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
          child: Container(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FULL NAME',
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
                TextFieldTemplate(
                  hintText: "John Miller",
                  controller: nameController,
                  obscureText: false,
                  width: width,
                  height: 50,
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  enabled: true,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    color: ColorSystem.secondary,
                    fontSize: 13.0,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFieldTemplate(
                  hintText: "email@email.com",
                  controller: emailController,
                  obscureText: false,
                  width: width,
                  height: 50,
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  enabled: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'PHONE',
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
                TextFieldTemplate(
                  hintText: "+2331234567890",
                  controller: phoneController,
                  obscureText: false,
                  width: width,
                  height: 50,
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  enabled: true,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonTemplate(
                      buttonName: "NEXT",
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
